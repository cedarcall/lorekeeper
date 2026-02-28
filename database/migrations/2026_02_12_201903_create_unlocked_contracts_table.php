<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUnlockedContractsTable extends Migration
{
    public function up()
    {
        Schema::create('unlocked_contracts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('contract_id');
            $table->timestamps();

            $table->unique(['user_id', 'contract_id']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('unlocked_contracts');
    }
}
