<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExpeditionSubmissionsTable extends Migration
{
    public function up()
    {
        Schema::create('expedition_submissions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('planet_id');
            $table->enum('status', ['pending', 'approved', 'rejected'])->default('pending');
            $table->string('submission_type'); // art, writing, etc
            $table->longText('description')->nullable();
            $table->string('image_extension')->nullable();
            $table->text('notes')->nullable(); // Admin notes for rejection
            $table->dateTime('approved_at')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('expedition_submissions');
    }
}
