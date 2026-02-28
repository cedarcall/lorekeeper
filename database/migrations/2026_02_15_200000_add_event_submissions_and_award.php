<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddEventSubmissionsAndAward extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Add award_id to events table
        if (!Schema::hasColumn('events', 'award_id')) {
            Schema::table('events', function (Blueprint $table) {
                $table->unsignedInteger('award_id')->nullable()->after('loot_table_id');
                $table->foreign('award_id')->references('id')->on('awards')->onDelete('set null');
            });
        }

        // Create event_submissions table
        if (!Schema::hasTable('event_submissions')) {
            Schema::create('event_submissions', function (Blueprint $table) {
                $table->id();
                $table->unsignedInteger('user_id')->index();
                $table->unsignedInteger('event_id')->index();
                $table->string('title')->nullable();
                $table->enum('submission_type', ['art', 'writing'])->default('art');
                $table->text('description')->nullable();
                $table->string('image_name')->nullable();
                $table->string('image_extension')->nullable();
                $table->enum('status', ['pending', 'approved', 'rejected'])->default('pending');
                $table->text('staff_notes')->nullable();
                $table->unsignedInteger('approved_by')->nullable();
                $table->timestamp('approved_at')->nullable();
                $table->timestamps();

                $table->foreign('user_id')->references('id')->on('users');
                $table->foreign('event_id')->references('id')->on('events');
                $table->foreign('approved_by')->references('id')->on('users');
            });
        }

        // Track which users have received the event badge
        if (!Schema::hasTable('user_event_badges')) {
            Schema::create('user_event_badges', function (Blueprint $table) {
                $table->id();
                $table->unsignedInteger('user_id')->index();
                $table->unsignedInteger('event_id')->index();
                $table->unsignedInteger('award_id')->index();
                $table->timestamp('awarded_at')->nullable();

                $table->unique(['user_id', 'event_id']);
                $table->foreign('user_id')->references('id')->on('users');
                $table->foreign('event_id')->references('id')->on('events');
                $table->foreign('award_id')->references('id')->on('awards');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_event_badges');
        Schema::dropIfExists('event_submissions');
        
        if (Schema::hasColumn('events', 'award_id')) {
            Schema::table('events', function (Blueprint $table) {
                $table->dropForeign(['award_id']);
                $table->dropColumn('award_id');
            });
        }
    }
}
