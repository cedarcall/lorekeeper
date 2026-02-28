<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class IncreaseEventDescriptionSize extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                $table->longText('description')->nullable()->change();
                $table->longText('parsed_description')->nullable()->change();
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
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                $table->text('description')->nullable()->change();
                $table->text('parsed_description')->nullable()->change();
            });
        }
    }
}
