<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddIsVisibleToEvents extends Migration
{
    public function up()
    {
        if (!Schema::hasColumn('events', 'is_visible')) {
            Schema::table('events', function (Blueprint $table) {
                // Add column without specifying position to avoid errors if `end_at` is missing.
                $table->boolean('is_visible')->default(1);
            });
        }
    }

    public function down()
    {
        if (Schema::hasColumn('events', 'is_visible')) {
            Schema::table('events', function (Blueprint $table) {
                $table->dropColumn('is_visible');
            });
        }
    }
}
