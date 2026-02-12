<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddQnaToWorldExpansionEvents extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events') && !Schema::hasColumn('events', 'qna')) {
            Schema::table('events', function (Blueprint $table) {
                $table->longText('qna')->nullable()->after('description');
                $table->longText('parsed_qna')->nullable()->after('qna');
            });
        }
    }

    public function down()
    {
        if (Schema::hasTable('events')) {
            Schema::table('events', function (Blueprint $table) {
                if (Schema::hasColumn('events', 'qna')) {
                    $table->dropColumn('qna');
                }
                if (Schema::hasColumn('events', 'parsed_qna')) {
                    $table->dropColumn('parsed_qna');
                }
            });
        }
    }
}
