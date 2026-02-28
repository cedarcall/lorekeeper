<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddHeaderImageToSitePages extends Migration
{
    public function up()
    {
        Schema::table('site_pages', function (Blueprint $table) {
            $table->string('header_image')->nullable()->after('text');
        });
    }

    public function down()
    {
        Schema::table('site_pages', function (Blueprint $table) {
            $table->dropColumn('header_image');
        });
    }
}
