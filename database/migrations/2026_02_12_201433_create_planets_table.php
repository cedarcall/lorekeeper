<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlanetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('planets', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('galaxy_id');
            $table->string('name')->nullable();
            $table->string('slug')->unique();
            $table->enum('rarity', ['common', 'uncommon', 'rare', 'legendary']);
            $table->string('type'); // Plains, Forest, Ocean, etc
            $table->string('risk_level'); // Low-Moderate, Moderate, etc
            $table->string('theme')->nullable();
            $table->longText('description')->nullable();
            $table->unsignedBigInteger('discoverer_id')->nullable();
            $table->dateTime('discovered_at')->nullable();
            $table->string('image_extension')->nullable();
            $table->string('thumb_extension')->nullable();
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('planets');
    }
}
