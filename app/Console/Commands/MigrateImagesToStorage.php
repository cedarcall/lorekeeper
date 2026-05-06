<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class MigrateImagesToStorage extends Command
{
    protected $signature = 'migrate:images {--force : Force re-migration of all images}';
    protected $description = 'Automatically migrate images from public/images to persistent storage (runs once on deploy)';

    public function handle()
    {
        $flagFile = storage_path('.images-migrated-flag');
        $force = $this->option('force');

        // Only run once per deployment unless --force is used
        if (!$force && File::exists($flagFile)) {
            return 0;
        }

        $this->info('Checking for images to migrate to persistent storage...');

        $directories = [
            ['public/images/characters', 'storage/app/public/images/characters', 'Character images'],
            ['public/images/character-updates', 'storage/app/public/images/character-updates', 'Design update images'],
            ['public/images/avatars', 'storage/app/public/images/avatars', 'Avatars'],
            ['public/images/events', 'storage/app/public/images/events', 'Monthly event images'],
            ['storage/app/public/event_submissions', 'storage/app/public/images/event-submissions', 'Monthly event submissions (legacy path)'],
        ];

        $totalMigrated = 0;

        foreach ($directories as [$source, $dest, $label]) {
            $sourcePath = base_path($source);
            $destPath = base_path($dest);

            if (!File::exists($sourcePath)) {
                continue;
            }

            // Ensure destination exists
            if (!File::isDirectory($destPath)) {
                File::makeDirectory($destPath, 0755, true);
            }

            // Copy all files recursively
            try {
                $files = File::allFiles($sourcePath);
                $count = 0;
                foreach ($files as $file) {
                    $relativePath = $file->getRelativePathname();
                    $destFile = $destPath . '/' . $relativePath;
                    
                    // Skip if already exists (unless force)
                    if (!$force && File::exists($destFile)) {
                        continue;
                    }

                    // Ensure subdirectory exists
                    $destDir = dirname($destFile);
                    if (!File::isDirectory($destDir)) {
                        File::makeDirectory($destDir, 0755, true);
                    }

                    // Copy file
                    if (File::copy($file->getPathname(), $destFile)) {
                        $count++;
                        $totalMigrated++;
                    }
                }
                
                if ($count > 0) {
                    $this->info("$label: Migrated $count files");
                }
            } catch (\Exception $e) {
                $this->error("$label: Migration failed - " . $e->getMessage());
            }
        }

        if ($totalMigrated > 0) {
            $this->info("✓ Total: $totalMigrated files migrated to persistent storage");
        } else {
            $this->info("✓ All images already in persistent storage (or none found)");
        }

        // Create flag file so migration only runs once
        File::put($flagFile, now()->toDateTimeString());

        return 0;
    }
}
