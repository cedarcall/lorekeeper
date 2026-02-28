<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRewardFieldsToExpeditionSubmissions extends Migration
{
    public function up()
    {
        Schema::table('expedition_submissions', function (Blueprint $table) {
            if (!Schema::hasColumn('expedition_submissions', 'credit_reward')) {
                $table->integer('credit_reward')->unsigned()->default(0)->after('approved_at');
            }
            if (!Schema::hasColumn('expedition_submissions', 'reputation_reward')) {
                $table->integer('reputation_reward')->unsigned()->default(0)->after('credit_reward');
            }
        });
    }

    public function down()
    {
        Schema::table('expedition_submissions', function (Blueprint $table) {
            if (Schema::hasColumn('expedition_submissions', 'credit_reward')) {
                $table->dropColumn('credit_reward');
            }
            if (Schema::hasColumn('expedition_submissions', 'reputation_reward')) {
                $table->dropColumn('reputation_reward');
            }
        });
    }
}
