<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFeaturedPlanetsTable extends Migration
{
    public function up()
    {
        if (Schema::hasTable('featured_planets')) {
            return;
        }

        Schema::create('featured_planets', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('galaxy_id');
            $table->string('name');
            $table->string('slug')->unique();
            $table->enum('rarity', ['common', 'uncommon', 'rare', 'legendary']);
            $table->string('type');
            $table->string('risk_level');
            $table->string('theme')->nullable();
            $table->longText('description')->nullable();
            $table->longText('parsed_description')->nullable();
            $table->boolean('is_active')->default(1);
            $table->unsignedInteger('created_by')->nullable();
            $table->timestamps();

            $table->foreign('galaxy_id')->references('id')->on('galaxies');
            $table->foreign('created_by')->references('id')->on('users');
        });
    }

    public function down()
    {
        Schema::dropIfExists('featured_planets');
    }
}
