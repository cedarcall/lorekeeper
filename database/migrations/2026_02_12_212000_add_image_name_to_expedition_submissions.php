<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddImageNameToExpeditionSubmissions extends Migration
{
    public function up()
    {
        Schema::table('expedition_submissions', function (Blueprint $table) {
            $table->string('image_name')->nullable()->after('image_extension');
        });
    }

    public function down()
    {
        Schema::table('expedition_submissions', function (Blueprint $table) {
            $table->dropColumn('image_name');
        });
    }
}
