<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddHomeworldPage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Add homeworld page
        DB::table('site_pages')->insert([
            [
                'key' => 'homeworld',
                'title' => 'Homeworld',
                'text' => '<p>Information about the homeworld will be added here.</p>',
                'parsed_text' => '<p>Information about the homeworld will be added here.</p>',
                'description' => 'Learn about our homeworld and its history.',
                'is_visible' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('site_pages')->where('key', 'homeworld')->delete();
    }
}
