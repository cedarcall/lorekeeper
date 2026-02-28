<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserPlanetExpeditionsTable extends Migration
{
    public function up()
    {
        Schema::create('user_planet_expeditions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('planet_id');
            $table->integer('visit_count')->default(0);
            $table->integer('highest_unlocked_tier')->default(0);
            $table->boolean('is_discoverer')->default(false);
            $table->timestamps();

            $table->unique(['user_id', 'planet_id']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('user_planet_expeditions');
    }
}
