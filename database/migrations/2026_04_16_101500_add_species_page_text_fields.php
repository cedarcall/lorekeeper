<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSpeciesPageTextFields extends Migration
{
    public function up()
    {
        if (!Schema::hasTable('specieses')) {
            return;
        }

        Schema::table('specieses', function (Blueprint $table) {
            if (!Schema::hasColumn('specieses', 'page_text')) {
                $table->longText('page_text')->nullable()->default(null);
            }
            if (!Schema::hasColumn('specieses', 'parsed_page_text')) {
                $table->longText('parsed_page_text')->nullable()->default(null);
            }
        });
    }

    public function down()
    {
        if (!Schema::hasTable('specieses')) {
            return;
        }

        Schema::table('specieses', function (Blueprint $table) {
            if (Schema::hasColumn('specieses', 'parsed_page_text')) {
                $table->dropColumn('parsed_page_text');
            }
            if (Schema::hasColumn('specieses', 'page_text')) {
                $table->dropColumn('page_text');
            }
        });
    }
}
