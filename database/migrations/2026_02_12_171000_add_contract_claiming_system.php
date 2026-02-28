<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddContractClaimingSystem extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Add fields to contracts table
        Schema::table('contracts', function (Blueprint $table) {
            $table->string('location')->nullable()->after('parsed_description');
            $table->text('required_items')->nullable()->after('location'); // JSON format
            $table->text('rewards')->nullable()->after('required_items'); // JSON format
            $table->integer('max_claims')->default(0)->after('rewards'); // 0 = unlimited
        });

        // Create user_contracts table to track claimed contracts
        Schema::create('user_contracts', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('user_id')->unsigned()->index();
            $table->integer('contract_id')->unsigned()->index();
            $table->enum('status', ['claimed', 'completed'])->default('claimed');
            $table->timestamp('claimed_at')->nullable();
            $table->timestamp('completed_at')->nullable();
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('contract_id')->references('id')->on('contracts')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_contracts');
        
        Schema::table('contracts', function (Blueprint $table) {
            $table->dropColumn(['location', 'required_items', 'rewards', 'max_claims']);
        });
    }
}
