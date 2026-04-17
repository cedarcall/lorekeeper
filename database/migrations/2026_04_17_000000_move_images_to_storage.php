<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // This migration marks the schema update to use storage/app/public/images
        // The actual file movement is handled by a separate command to avoid race conditions
        // See: php artisan move-images-to-storage
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
