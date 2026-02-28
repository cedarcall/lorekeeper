<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlanetInfoTiersTable extends Migration
{
    public function up()
    {
        Schema::create('planet_info_tiers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('planet_id');
            $table->integer('tier_number');
            $table->longText('info_data'); // JSON format: {type, risk, theme, resources, etc}
            $table->timestamps();

            $table->unique(['planet_id', 'tier_number']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('planet_info_tiers');
    }
}
