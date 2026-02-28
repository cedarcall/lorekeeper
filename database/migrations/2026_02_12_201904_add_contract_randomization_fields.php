<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddContractRandomizationFields extends Migration
{
    public function up()
    {
        Schema::table('contracts', function (Blueprint $table) {
            $table->boolean('is_randomizable')->default(false)->after('is_active');
            $table->integer('unlock_contract_chance')->default(0)->after('is_randomizable'); // 0-100% chance to drop contract unlock from expeditions
            $table->integer('rarity_weight')->default(1)->after('unlock_contract_chance'); // Weight for randomization (for rare contracts)
        });
    }

    public function down()
    {
        Schema::table('contracts', function (Blueprint $table) {
            $table->dropColumn(['is_randomizable', 'unlock_contract_chance', 'rarity_weight']);
        });
    }
}
