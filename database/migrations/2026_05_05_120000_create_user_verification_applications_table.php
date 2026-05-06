<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserVerificationApplicationsTable extends Migration
{
    public function up()
    {
        if (Schema::hasTable('user_verification_applications')) {
            return;
        }

        Schema::create('user_verification_applications', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('user_id')->index();
            $table->string('social_media_link', 255);
            $table->text('join_reason');
            $table->boolean('rules_confirmed')->default(0);
            $table->string('voidi_species_answer', 255);
            $table->string('status', 20)->default('pending')->index();
            $table->unsignedInteger('reviewed_by')->nullable()->index();
            $table->text('review_notes')->nullable();
            $table->dateTime('reviewed_at')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('user_verification_applications');
    }
}
