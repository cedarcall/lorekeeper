<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTitleToExpeditionSubmissions extends Migration
{
    public function up()
    {
        Schema::table('expedition_submissions', function (Blueprint $table) {
            if (!Schema::hasColumn('expedition_submissions', 'title')) {
                $table->string('title', 100)->nullable()->after('planet_id');
            }
        });
    }

    public function down()
    {
        Schema::table('expedition_submissions', function (Blueprint $table) {
            if (Schema::hasColumn('expedition_submissions', 'title')) {
                $table->dropColumn('title');
            }
        });
    }
}
