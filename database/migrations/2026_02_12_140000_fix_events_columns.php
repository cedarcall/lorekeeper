<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FixEventsColumns extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                if (!Schema::hasColumn('events', 'start_at')) {
                    $table->dateTime('start_at')->nullable();
                }
                if (!Schema::hasColumn('events', 'end_at')) {
                    $table->dateTime('end_at')->nullable();
                }
                if (!Schema::hasColumn('events', 'parsed_text')) {
                    $table->text('parsed_text')->nullable();
                }
                if (!Schema::hasColumn('events', 'header_image')) {
                    $table->string('header_image')->nullable();
                }
                if (!Schema::hasColumn('events', 'is_visible')) {
                    $table->boolean('is_visible')->default(1);
                }
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                if (Schema::hasColumn('events', 'start_at')) $table->dropColumn('start_at');
                if (Schema::hasColumn('events', 'end_at')) $table->dropColumn('end_at');
                if (Schema::hasColumn('events', 'parsed_text')) $table->dropColumn('parsed_text');
                if (Schema::hasColumn('events', 'header_image')) $table->dropColumn('header_image');
                if (Schema::hasColumn('events', 'is_visible')) $table->dropColumn('is_visible');
            });
        }
    }
}
