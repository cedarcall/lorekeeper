<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnnouncements extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('announcements', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->string('title');
            $table->text('text');
            $table->longText('parsed_text')->nullable();
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
        });

        Schema::table('users', function (Blueprint $table) {
            $table->boolean('is_announcement_unread')->default(0)->after('is_news_unread');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('announcements');
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('is_announcement_unread');
        });
    }
}
