<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration
{
    public function up()
    {
        if (!Schema::hasTable('events')) {
            Schema::create('events', function (Blueprint $table) {
                $table->id();
                $table->string('slug')->unique();
                $table->string('title');
                $table->text('content')->nullable();
                $table->text('parsed_text')->nullable();
                $table->string('header_image')->nullable();
                $table->dateTime('start_at')->nullable();
                $table->dateTime('end_at')->nullable();
                $table->boolean('is_visible')->default(1);
                $table->timestamps();
            });
        }
    }

    public function down()
    {
        Schema::dropIfExists('events');
    }
}
