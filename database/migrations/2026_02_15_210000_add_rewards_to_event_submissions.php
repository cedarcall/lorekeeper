<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRewardsToEventSubmissions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('event_submissions', function (Blueprint $table) {
            $table->integer('credit_reward')->default(0)->after('staff_notes');
            $table->integer('reputation_reward')->default(0)->after('credit_reward');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('event_submissions', function (Blueprint $table) {
            $table->dropColumn(['credit_reward', 'reputation_reward']);
        });
    }
}
