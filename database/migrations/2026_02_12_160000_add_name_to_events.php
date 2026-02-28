<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddNameToEvents extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events') && !Schema::hasColumn('events', 'name')) {
            Schema::table('events', function (Blueprint $table) {
                $table->string('name')->nullable()->after('title');
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('events') && Schema::hasColumn('events', 'name')) {
            Schema::table('events', function (Blueprint $table) {
                $table->dropColumn('name');
            });
        }
    }
}
