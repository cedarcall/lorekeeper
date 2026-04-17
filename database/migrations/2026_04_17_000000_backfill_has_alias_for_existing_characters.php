<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class BackfillHasAliasForExistingCharacters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Set has_alias = 1 for all users who have characters
        DB::statement('UPDATE users SET has_alias = 1 WHERE id IN (SELECT DISTINCT user_id FROM characters WHERE user_id IS NOT NULL)');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // This migration should not be reversed as it's a backfill
    }
}
