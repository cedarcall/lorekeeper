<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddQnaToEvents extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events') && !Schema::hasColumn('events', 'qna_content')) {
            Schema::table('events', function (Blueprint $table) {
                $table->longText('qna_content')->nullable()->after('parsed_text');
                $table->longText('qna_parsed_text')->nullable()->after('qna_content');
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                if (Schema::hasColumn('events', 'qna_content')) {
                    $table->dropColumn('qna_content');
                }
                if (Schema::hasColumn('events', 'qna_parsed_text')) {
                    $table->dropColumn('qna_parsed_text');
                }
            });
        }
    }
}
