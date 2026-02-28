<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDatesAndMaterialsToFeaturedPlanets extends Migration
{
    public function up()
    {
        Schema::table('featured_planets', function (Blueprint $table) {
            if (!Schema::hasColumn('featured_planets', 'start_at')) {
                $table->dateTime('start_at')->nullable()->after('parsed_description');
            }
            if (!Schema::hasColumn('featured_planets', 'end_at')) {
                $table->dateTime('end_at')->nullable()->after('start_at');
            }
        });

        if (!Schema::hasTable('featured_planet_items')) {
            Schema::create('featured_planet_items', function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->unsignedBigInteger('featured_planet_id');
                $table->unsignedInteger('item_id');

                $table->foreign('featured_planet_id')->references('id')->on('featured_planets')->onDelete('cascade');
                $table->foreign('item_id')->references('id')->on('items')->onDelete('cascade');

                $table->primary(['featured_planet_id', 'item_id']);
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('featured_planet_items')) {
            Schema::dropIfExists('featured_planet_items');
        }

        Schema::table('featured_planets', function (Blueprint $table) {
            if (Schema::hasColumn('featured_planets', 'start_at')) {
                $table->dropColumn('start_at');
            }
            if (Schema::hasColumn('featured_planets', 'end_at')) {
                $table->dropColumn('end_at');
            }
        });
    }
}
