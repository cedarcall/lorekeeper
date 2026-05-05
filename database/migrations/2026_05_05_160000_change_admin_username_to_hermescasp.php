<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Change admin username from Cedarcall to Hermescasp
        DB::table('users')
            ->where('name', 'Cedarcall')
            ->update(['name' => 'Hermescasp']);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Revert back if needed
        DB::table('users')
            ->where('name', 'Hermescasp')
            ->update(['name' => 'Cedarcall']);
    }
};
