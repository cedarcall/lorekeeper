<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class MoveImagesToStorage extends Command
{
    protected $signature = 'migrate-images-to-storage';
    protected $description = 'Migrate existing images from public/images to persistent storage/app/public/images';

    public function handle()
    {
        $this->info('Starting image migration to persistent storage...');

        $directories = [
            ['public/images/characters', 'storage/app/public/images/characters', 'Character images'],
            ['public/images/character-updates', 'storage/app/public/images/character-updates', 'Design update images'],
            ['public/images/avatars', 'storage/app/public/images/avatars', 'Avatars'],
        ];

        foreach ($directories as [$source, $dest, $label]) {
            $sourcePath = base_path($source);
            $destPath = base_path($dest);

            if (!File::exists($sourcePath)) {
                $this->info("$label: Source directory not found ($sourcePath)");
                continue;
            }

            // Ensure destination exists
            if (!File::isDirectory($destPath)) {
                File::makeDirectory($destPath, 0755, true);
                $this->info("$label: Created destination directory");
            }

            // Copy all files
            $files = File::allFiles($sourcePath);
            $count = 0;
            foreach ($files as $file) {
                $relativePath = $file->getRelativePathname();
                $destFile = $destPath . '/' . $relativePath;
                
                // Ensure subdirectory exists
                $destDir = dirname($destFile);
                if (!File::isDirectory($destDir)) {
                    File::makeDirectory($destDir, 0755, true);
                }

                // Copy file
                File::copy($file->getPathname(), $destFile);
                $count++;
            }

            $this->info("$label: Migrated $count files");
        }

        $this->info('Image migration complete!');
        $this->warn('IMPORTANT: Ensure storage/ is mounted as a Docker volume to persist across redeploys.');
        $this->line('Add to docker-compose.yml under lorekeeper service volumes:');
        $this->line('  - lorekeeper_storage:/app/storage');
        $this->line('And add volume at root:');
        $this->line('volumes:');
        $this->line('  lorekeeper_storage:');
    }
}
