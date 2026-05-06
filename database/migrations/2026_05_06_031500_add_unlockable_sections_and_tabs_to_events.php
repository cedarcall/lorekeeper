<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUnlockableSectionsAndTabsToEvents extends Migration
{
    public function up()
    {
        if(!Schema::hasTable('events')) {
            return;
        }

        Schema::table('events', function (Blueprint $table) {
            if(!Schema::hasColumn('events', 'section_1_title')) $table->string('section_1_title')->nullable()->after('qna_parsed_text');
            if(!Schema::hasColumn('events', 'section_1_content')) $table->longText('section_1_content')->nullable()->after('section_1_title');
            if(!Schema::hasColumn('events', 'section_1_parsed_text')) $table->longText('section_1_parsed_text')->nullable()->after('section_1_content');
            if(!Schema::hasColumn('events', 'section_1_unlock_at')) $table->dateTime('section_1_unlock_at')->nullable()->after('section_1_parsed_text');

            if(!Schema::hasColumn('events', 'section_2_title')) $table->string('section_2_title')->nullable()->after('section_1_unlock_at');
            if(!Schema::hasColumn('events', 'section_2_content')) $table->longText('section_2_content')->nullable()->after('section_2_title');
            if(!Schema::hasColumn('events', 'section_2_parsed_text')) $table->longText('section_2_parsed_text')->nullable()->after('section_2_content');
            if(!Schema::hasColumn('events', 'section_2_unlock_at')) $table->dateTime('section_2_unlock_at')->nullable()->after('section_2_parsed_text');

            if(!Schema::hasColumn('events', 'section_3_title')) $table->string('section_3_title')->nullable()->after('section_2_unlock_at');
            if(!Schema::hasColumn('events', 'section_3_content')) $table->longText('section_3_content')->nullable()->after('section_3_title');
            if(!Schema::hasColumn('events', 'section_3_parsed_text')) $table->longText('section_3_parsed_text')->nullable()->after('section_3_content');
            if(!Schema::hasColumn('events', 'section_3_unlock_at')) $table->dateTime('section_3_unlock_at')->nullable()->after('section_3_parsed_text');

            if(!Schema::hasColumn('events', 'locations_content')) $table->longText('locations_content')->nullable()->after('section_3_unlock_at');
            if(!Schema::hasColumn('events', 'locations_parsed_text')) $table->longText('locations_parsed_text')->nullable()->after('locations_content');
            if(!Schema::hasColumn('events', 'prompt_ideas_content')) $table->longText('prompt_ideas_content')->nullable()->after('locations_parsed_text');
            if(!Schema::hasColumn('events', 'prompt_ideas_parsed_text')) $table->longText('prompt_ideas_parsed_text')->nullable()->after('prompt_ideas_content');
        });
    }

    public function down()
    {
        if(!Schema::hasTable('events')) {
            return;
        }

        Schema::table('events', function (Blueprint $table) {
            $columns = [
                'section_1_title', 'section_1_content', 'section_1_parsed_text', 'section_1_unlock_at',
                'section_2_title', 'section_2_content', 'section_2_parsed_text', 'section_2_unlock_at',
                'section_3_title', 'section_3_content', 'section_3_parsed_text', 'section_3_unlock_at',
                'locations_content', 'locations_parsed_text', 'prompt_ideas_content', 'prompt_ideas_parsed_text',
            ];

            foreach($columns as $column) {
                if(Schema::hasColumn('events', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
}
