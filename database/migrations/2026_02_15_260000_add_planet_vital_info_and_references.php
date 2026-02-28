<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPlanetVitalInfoAndReferences extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('planets', function (Blueprint $table) {
            // Vital information fields - unlocked progressively with visits
            $table->string('weather')->nullable()->after('description');
            $table->string('flora_level')->nullable()->after('weather');
            $table->string('fauna_level')->nullable()->after('flora_level');
            $table->string('danger_level')->nullable()->after('fauna_level');
            $table->string('atmosphere')->nullable()->after('danger_level');
            $table->string('terrain')->nullable()->after('atmosphere');
            $table->text('special_notes')->nullable()->after('terrain');
            
            // Reference images (5 images for drawing reference)
            $table->string('ref_image_1')->nullable()->after('special_notes');
            $table->string('ref_image_2')->nullable()->after('ref_image_1');
            $table->string('ref_image_3')->nullable()->after('ref_image_2');
            $table->string('ref_image_4')->nullable()->after('ref_image_3');
            $table->string('ref_image_5')->nullable()->after('ref_image_4');
            
            // Color palette (stored as JSON array of hex colors)
            $table->text('color_palette')->nullable()->after('ref_image_5');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('planets', function (Blueprint $table) {
            $table->dropColumn([
                'weather', 'flora_level', 'fauna_level', 'danger_level', 
                'atmosphere', 'terrain', 'special_notes',
                'ref_image_1', 'ref_image_2', 'ref_image_3', 'ref_image_4', 'ref_image_5',
                'color_palette'
            ]);
        });
    }
}
