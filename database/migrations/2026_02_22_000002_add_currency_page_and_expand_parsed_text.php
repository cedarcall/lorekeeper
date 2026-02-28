<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCurrencyPageAndExpandParsedText extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('site_pages', function (Blueprint $table) {
            $table->longText('parsed_text')->nullable()->change();
        });

        $page = \DB::table('site_pages')->where('key', 'currency')->first();

        if (!$page) {
            \DB::table('site_pages')->insert([
                'key' => 'currency',
                'title' => 'Credits & Reputation',
                'description' => 'Learn how Credits and Reputation work, how to earn them, and where to spend them.',
                'text' => '',
                'parsed_text' => '',
                'is_visible' => 1,
                'can_comment' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        } else {
            \DB::table('site_pages')->where('key', 'currency')->update([
                'title' => 'Credits & Reputation',
                'description' => 'Learn how Credits and Reputation work, how to earn them, and where to spend them.',
                'updated_at' => now(),
            ]);
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('site_pages', function (Blueprint $table) {
            $table->text('parsed_text')->nullable()->change();
        });

        \DB::table('site_pages')->where('key', 'currency')->delete();
    }
}
