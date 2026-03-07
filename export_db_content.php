<?php
/**
 * Export DB content tables to a SQL file for production seeding.
 * 
 * Usage: 
 *   1. Start XAMPP MySQL
 *   2. Run: php export_db_content.php
 *   3. Commit the generated database/seeds/production_data.sql
 *   4. Deploy — the seeder will import it automatically
 */

require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

$dbName = DB::getDatabaseName();
$dbUser = config('database.connections.mysql.username');
$dbPass = config('database.connections.mysql.password');
$dbHost = config('database.connections.mysql.host');
$dbPort = config('database.connections.mysql.port');

echo "Connected to database: $dbName\n\n";

// Content tables to export (NOT schema/migrations tables, NOT user-specific data)
// These are the "world building" / admin-created content tables.
$contentTables = [
    // Core site content
    'site_pages',
    'site_settings',
    'site_extensions',
    
    // World data
    'specieses',
    'subtypes',
    'rarities',
    'item_categories',
    'items',
    'item_tags',
    'currencies',
    'feature_categories',
    'features',
    'character_categories',
    
    // Loot
    'loot_tables',
    'loots',
    
    // Prompts
    'prompt_categories',
    'prompts',
    'prompt_rewards',
    
    // Shops
    'shops',
    'shop_stock',
    
    // Galleries
    'galleries',
    
    // Awards
    'award_categories',
    'awards',
    
    // Recipes
    'recipes',
    'recipe_ingredients',
    'recipe_rewards',
    
    // Dailies
    'dailies',
    'daily_rewards',
    
    // News & announcements
    'news',
    'announcements',
    
    // Themes
    'themes',
    
    // Custom features - Galaxies, Planets, Expeditions
    'galaxies',
    'planets',
    'planet_info_tiers',
    'featured_planets',
    'featured_planet_items',
    
    // Monthly Events  
    'events',
    'event_submissions',
    
    // Contracts
    'contracts',
    
    // Forums
    'forums',
    
    // World Expansion
    'world_locations',
    'world_location_types',
    'world_faunas',
    'world_fauna_categories',
    'world_floras',
    'world_flora_categories',
    'world_events',
    'world_event_categories',
    'world_figures',
    'world_figure_categories',
    'world_factions',
    'world_faction_types',
    'world_faction_ranks',
    'world_faction_rank_members',
    'world_concepts',
    'world_concept_categories',
    'world_glossary',
    
    // Homeworld
    'homeworld_images',
    
    // Character sublists
    'character_sublists',
    
    // Ranks (staff ranks)
    'ranks',
    'rank_powers',
];

$outputFile = __DIR__ . '/database/seeds/production_data.sql';
$sql = "-- Auto-generated production data export\n";
$sql .= "-- Generated: " . date('Y-m-d H:i:s') . "\n";
$sql .= "-- Source database: $dbName\n\n";
$sql .= "SET FOREIGN_KEY_CHECKS=0;\n\n";

$exported = 0;
$skipped = 0;

foreach ($contentTables as $table) {
    // Check if table exists
    try {
        $rows = DB::table($table)->get();
    } catch (\Exception $e) {
        echo "  SKIP: $table (table doesn't exist)\n";
        $skipped++;
        continue;
    }
    
    $count = $rows->count();
    if ($count === 0) {
        echo "  SKIP: $table (empty)\n";
        $skipped++;
        continue;
    }
    
    echo "  EXPORT: $table ($count rows)\n";
    
    // DELETE existing rows first (idempotent re-runs)
    $sql .= "-- $table: $count rows\n";
    $sql .= "DELETE FROM `$table`;\n";
    
    // Build INSERT statements in batches
    $columns = array_keys((array) $rows->first());
    $colList = '`' . implode('`, `', $columns) . '`';
    
    foreach ($rows->chunk(50) as $chunk) {
        $sql .= "INSERT INTO `$table` ($colList) VALUES\n";
        $values = [];
        foreach ($chunk as $row) {
            $rowValues = [];
            foreach ($columns as $col) {
                $val = $row->$col;
                if (is_null($val)) {
                    $rowValues[] = 'NULL';
                } else {
                    $rowValues[] = "'" . addslashes((string)$val) . "'";
                }
            }
            $values[] = '(' . implode(', ', $rowValues) . ')';
        }
        $sql .= implode(",\n", $values) . ";\n";
    }
    $sql .= "\n";
    $exported++;
}

$sql .= "SET FOREIGN_KEY_CHECKS=1;\n";

file_put_contents($outputFile, $sql);
echo "\nDone! Exported $exported tables ($skipped skipped)\n";
echo "Output: database/seeds/production_data.sql\n";
echo "\nNext steps:\n";
echo "  1. git add database/seeds/production_data.sql\n";
echo "  2. git commit -m 'Add production data seed'\n";
echo "  3. git push (deploy will auto-import)\n";
