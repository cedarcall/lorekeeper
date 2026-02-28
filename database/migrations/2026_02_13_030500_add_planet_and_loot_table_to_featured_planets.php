<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPlanetAndLootTableToFeaturedPlanets extends Migration
{
    public function up()
    {
        Schema::table('featured_planets', function (Blueprint $table) {
            if (!Schema::hasColumn('featured_planets', 'planet_id')) {
                $table->unsignedBigInteger('planet_id')->nullable()->after('id');
            } else {
                $table->unsignedBigInteger('planet_id')->nullable()->change();
            }
            if (!Schema::hasColumn('featured_planets', 'loot_table_id')) {
                $table->unsignedInteger('loot_table_id')->nullable()->after('end_at');
            }
        });

        Schema::table('featured_planets', function (Blueprint $table) {
            if (Schema::hasColumn('featured_planets', 'planet_id')) {
                $table->foreign('planet_id')->references('id')->on('planets')->nullOnDelete();
            }
            if (Schema::hasColumn('featured_planets', 'loot_table_id')) {
                $table->foreign('loot_table_id')->references('id')->on('loot_tables')->nullOnDelete();
            }
        });
    }

    public function down()
    {
        Schema::table('featured_planets', function (Blueprint $table) {
            if (Schema::hasColumn('featured_planets', 'planet_id')) {
                $table->dropForeign(['planet_id']);
                $table->dropColumn('planet_id');
            }
            if (Schema::hasColumn('featured_planets', 'loot_table_id')) {
                $table->dropForeign(['loot_table_id']);
                $table->dropColumn('loot_table_id');
            }
        });
    }
}
