<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FixEventsCoreColumns extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                if (!Schema::hasColumn('events', 'slug')) {
                    $table->string('slug')->nullable();
                }
                if (!Schema::hasColumn('events', 'title')) {
                    $table->string('title')->nullable();
                }
                if (!Schema::hasColumn('events', 'content')) {
                    $table->text('content')->nullable();
                }
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                if (Schema::hasColumn('events', 'slug')) $table->dropColumn('slug');
                if (Schema::hasColumn('events', 'title')) $table->dropColumn('title');
                if (Schema::hasColumn('events', 'content')) $table->dropColumn('content');
            });
        }
    }
}
