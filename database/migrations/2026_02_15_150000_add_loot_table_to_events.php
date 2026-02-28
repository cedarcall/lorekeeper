<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddLootTableToEvents extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events') && !Schema::hasColumn('events', 'loot_table_id')) {
            Schema::table('events', function (Blueprint $table) {
                $table->unsignedInteger('loot_table_id')->nullable();
                $table->foreign('loot_table_id')->references('id')->on('loot_tables');
            });
        }
    }

    public function down()
    {
        if (Schema::hasColumn('events', 'loot_table_id')) {
            Schema::table('events', function (Blueprint $table) {
                $table->dropForeign(['loot_table_id']);
                $table->dropColumn('loot_table_id');
            });
        }
    }
}
