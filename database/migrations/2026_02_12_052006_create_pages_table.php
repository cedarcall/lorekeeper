<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
{
    Schema::create('pages', function (Blueprint $table) {
        $table->id();
        $table->string('key')->unique();              // "monthly-event", "contracts"
        $table->string('title');
        $table->longText('content')->nullable();      // WYSIWYG HTML
        $table->string('header_image')->nullable();   // path under /public or storage
        $table->boolean('is_visible')->default(true);
        $table->timestamps();
    });
}

    }
