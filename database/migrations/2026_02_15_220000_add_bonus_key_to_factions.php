<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBonusKeyToFactions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('factions', function (Blueprint $table) {
            $table->string('bonus_key')->nullable()->after('is_user_faction');
            $table->string('slug')->nullable()->after('name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('factions', function (Blueprint $table) {
            $table->dropColumn('bonus_key');
            $table->dropColumn('slug');
        });
    }
}
