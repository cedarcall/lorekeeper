<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DB;

class SeedProductionData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'seed-production-data {--force : Run without confirmation}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Imports production content data from the SQL dump file.';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $sqlFile = database_path('seeds/production_data.sql');

        if (!file_exists($sqlFile)) {
            $this->info('No production data file found at database/seeds/production_data.sql — skipping.');
            return 0;
        }

        // Check if data already exists (use site_pages as a canary - if it has
        // more than the default text pages, data was already imported)
        $pageCount = DB::table('site_pages')->count();
        $defaultPageCount = count(config('lorekeeper.text_pages', []));
        
        if ($pageCount > $defaultPageCount && !$this->option('force')) {
            $this->info('Production data appears to already be seeded (site_pages has '.$pageCount.' rows). Skipping.');
            $this->info('Use --force to re-import.');
            return 0;
        }

        $this->info('Importing production data from SQL dump...');

        // Try mysql CLI first (most reliable for multi-statement SQL files)
        if ($this->importViaMysqlCli($sqlFile)) {
            $this->info('Done! Production data imported via mysql CLI.');
            return 0;
        }

        // Fallback: use PDO with proper SQL splitting
        $this->info('mysql CLI not available, using PDO fallback...');
        $sql = file_get_contents($sqlFile);
        
        $pdo = DB::connection()->getPdo();
        $pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, true);
        
        $statements = $this->splitSqlStatements($sql);
        $count = 0;
        $failed = 0;
        
        foreach ($statements as $statement) {
            $clean = trim($statement);
            if (empty($clean) || strpos($clean, '--') === 0) continue;
            
            try {
                $pdo->exec($clean);
                $count++;
            } catch (\Exception $e) {
                $failed++;
                $this->warn('Failed (' . substr($clean, 0, 60) . '...): ' . $e->getMessage());
            }
        }
        
        $this->info("Done! Executed $count statements" . ($failed ? " ($failed failed)" : "") . ".");
        return 0;
    }

    /**
     * Try to import the SQL file using the mysql CLI tool.
     * Returns true on success, false if mysql CLI is not available.
     */
    protected function importViaMysqlCli($sqlFile)
    {
        // Check if mysql CLI is available
        $which = trim(shell_exec('which mysql 2>/dev/null') ?? '');
        if (empty($which)) return false;

        $host = config('database.connections.mysql.host', '127.0.0.1');
        $port = config('database.connections.mysql.port', '3306');
        $database = config('database.connections.mysql.database');
        $username = config('database.connections.mysql.username');
        $password = config('database.connections.mysql.password', '');

        $cmd = sprintf(
            'mysql -h %s -P %s -u %s %s %s < %s 2>&1',
            escapeshellarg($host),
            escapeshellarg($port),
            escapeshellarg($username),
            $password !== '' ? '--password=' . escapeshellarg($password) : '',
            escapeshellarg($database),
            escapeshellarg($sqlFile)
        );

        exec($cmd, $output, $exitCode);

        if ($exitCode !== 0) {
            $this->warn('mysql CLI import failed: ' . implode("\n", $output));
            return false;
        }

        return true;
    }

    /**
     * Split SQL into individual statements, respecting quoted strings.
     */
    protected function splitSqlStatements($sql)
    {
        $statements = [];
        $current = '';
        $inSingle = false;
        $inDouble = false;
        $escaped = false;
        $len = strlen($sql);

        for ($i = 0; $i < $len; $i++) {
            $ch = $sql[$i];

            if ($escaped) {
                $current .= $ch;
                $escaped = false;
                continue;
            }

            if ($ch === '\\') {
                $current .= $ch;
                $escaped = true;
                continue;
            }

            if ($ch === "'" && !$inDouble) {
                $inSingle = !$inSingle;
            } elseif ($ch === '"' && !$inSingle) {
                $inDouble = !$inDouble;
            }

            if ($ch === ';' && !$inSingle && !$inDouble) {
                $trimmed = trim($current);
                if (!empty($trimmed)) {
                    $statements[] = $trimmed;
                }
                $current = '';
                continue;
            }

            $current .= $ch;
        }

        $trimmed = trim($current);
        if (!empty($trimmed)) {
            $statements[] = $trimmed;
        }

        return $statements;
    }
}
