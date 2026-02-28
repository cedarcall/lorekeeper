<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContractsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contracts', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();

            $table->string('name');
            $table->string('summary', 300)->nullable()->default(null);

            $table->text('description')->nullable()->default(null);
            $table->text('parsed_description')->nullable()->default(null);

            $table->string('image_extension', 191)->nullable()->default(null);
            $table->string('thumb_extension', 191)->nullable()->default(null);
            $table->integer('sort')->unsigned()->default(0);

            $table->boolean('is_active')->default(1);

            $table->dateTime('occur_start')->nullable()->default(null);
            $table->dateTime('occur_end')->nullable()->default(null);

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contracts');
    }
}
