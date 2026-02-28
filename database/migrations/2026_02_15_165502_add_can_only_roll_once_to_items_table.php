<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCanOnlyRollOnceToItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Add can_only_roll_once column to items table
        Schema::table('items', function (Blueprint $table) {
            $table->boolean('can_only_roll_once')->default(false)->after('allow_transfer');
        });

        // Create tracking table for once-only item rolls per event
        Schema::create('user_event_item_rolls', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('user_id')->index();
            $table->unsignedInteger('item_id')->index();
            $table->unsignedInteger('event_id')->index();
            $table->timestamps();

            $table->unique(['user_id', 'item_id', 'event_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_event_item_rolls');

        Schema::table('items', function (Blueprint $table) {
            $table->dropColumn('can_only_roll_once');
        });
    }
}
