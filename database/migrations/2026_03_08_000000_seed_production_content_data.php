<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class SeedProductionContentData extends Migration
{
    /**
     * Run the production data import as a migration so it is guaranteed
     * to execute exactly once via `php artisan migrate`.
     */
    public function up()
    {
        $sqlFile = database_path('seeds/production_data.sql');

        if (!file_exists($sqlFile)) {
            return;
        }

        $sql = file_get_contents($sqlFile);

        // Use PDO directly to execute multi-statement SQL
        $pdo = DB::connection()->getPdo();
        $pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, true);

        try {
            $pdo->exec($sql);
        } catch (\Exception $e) {
            // If multi-statement exec fails, fall back to splitting and running one-by-one
            $statements = $this->splitSql($sql);
            foreach ($statements as $stmt) {
                $clean = trim($stmt);
                if (empty($clean) || strpos($clean, '--') === 0) {
                    continue;
                }
                try {
                    $pdo->exec($clean);
                } catch (\Exception $inner) {
                    // Log but continue — some statements may fail on duplicate keys etc.
                    logger()->warning('Migration SQL statement failed: ' . $inner->getMessage());
                }
            }
        }
    }

    /**
     * Split SQL into individual statements, respecting quoted strings.
     */
    private function splitSql($sql)
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

    public function down()
    {
        // Not reversible — data would need to be manually cleaned.
    }
}
