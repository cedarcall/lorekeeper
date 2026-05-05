<?php

use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Run the image migration on every deployment
        // This ensures images are moved from public/images to storage/app/public/images
        \Artisan::call('migrate:images');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // No-op: we don't revert image migrations
    }
};
