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

        $sql = file_get_contents($sqlFile);
        
        // Split into individual statements and execute
        $statements = array_filter(
            array_map('trim', explode(";\n", $sql)),
            function ($s) {
                return !empty($s) && strpos($s, '--') !== 0;
            }
        );

        $count = 0;
        foreach ($statements as $statement) {
            // Skip comments and empty lines
            $clean = trim($statement);
            if (empty($clean) || strpos($clean, '--') === 0) continue;
            
            try {
                DB::unprepared($clean);
                $count++;
            } catch (\Exception $e) {
                $this->warn('Statement failed: ' . substr($clean, 0, 80) . '...');
                $this->warn('Error: ' . $e->getMessage());
            }
        }

        $this->info("Done! Executed $count SQL statements.");
        return 0;
    }
}
