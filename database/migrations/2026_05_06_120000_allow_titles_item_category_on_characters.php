<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class AllowTitlesItemCategoryOnCharacters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::table('item_categories')
            ->whereRaw('LOWER(name) = ?', ['titles'])
            ->update(['is_character_owned' => 1]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Intentionally left blank: the prior value may have been changed manually.
    }
}