<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDescriptionToSitePages extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('site_pages', function (Blueprint $table) {
            $table->text('description')->nullable()->after('title');
        });
        
        // Create the Getting Started page if it doesn't exist
        $existingPage = \DB::table('site_pages')->where('key', 'getting-started')->first();
        if (!$existingPage) {
            \DB::table('site_pages')->insert([
                'key' => 'getting-started',
                'title' => 'Getting Started',
                'description' => 'Start your adventure in our world',
                'text' => '',
                'parsed_text' => '',
                'is_visible' => 1,
                'can_comment' => 1,
                'created_at' => now(),
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
            $table->dropColumn('description');
        });
    }
}
