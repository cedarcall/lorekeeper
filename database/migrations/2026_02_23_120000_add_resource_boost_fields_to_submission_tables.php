<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddResourceBoostFieldsToSubmissionTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasTable('expedition_submissions')) {
            Schema::table('expedition_submissions', function (Blueprint $table) {
                if (!Schema::hasColumn('expedition_submissions', 'resource_boost_item_id')) {
                    $table->unsignedBigInteger('resource_boost_item_id')->nullable()->after('reputation_reward');
                }
                if (!Schema::hasColumn('expedition_submissions', 'resource_boost_target_item_id')) {
                    $table->unsignedBigInteger('resource_boost_target_item_id')->nullable()->after('resource_boost_item_id');
                }
            });
        }

        if (Schema::hasTable('event_submissions')) {
            Schema::table('event_submissions', function (Blueprint $table) {
                if (!Schema::hasColumn('event_submissions', 'resource_boost_item_id')) {
                    $table->unsignedBigInteger('resource_boost_item_id')->nullable()->after('reputation_reward');
                }
                if (!Schema::hasColumn('event_submissions', 'resource_boost_target_item_id')) {
                    $table->unsignedBigInteger('resource_boost_target_item_id')->nullable()->after('resource_boost_item_id');
                }
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
        if (Schema::hasTable('expedition_submissions')) {
            Schema::table('expedition_submissions', function (Blueprint $table) {
                if (Schema::hasColumn('expedition_submissions', 'resource_boost_target_item_id')) {
                    $table->dropColumn('resource_boost_target_item_id');
                }
                if (Schema::hasColumn('expedition_submissions', 'resource_boost_item_id')) {
                    $table->dropColumn('resource_boost_item_id');
                }
            });
        }

        if (Schema::hasTable('event_submissions')) {
            Schema::table('event_submissions', function (Blueprint $table) {
                if (Schema::hasColumn('event_submissions', 'resource_boost_target_item_id')) {
                    $table->dropColumn('resource_boost_target_item_id');
                }
                if (Schema::hasColumn('event_submissions', 'resource_boost_item_id')) {
                    $table->dropColumn('resource_boost_item_id');
                }
            });
        }
    }
}
