<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddWorldInfoSettings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Add 4 world info section settings (title and description for each)
        $settings = [
            ['key' => 'world_info_1_title', 'value' => 'Current Galaxy', 'description' => 'World info section 1 title'],
            ['key' => 'world_info_1_description', 'value' => '', 'description' => 'World info section 1 description'],
            ['key' => 'world_info_1_image', 'value' => '', 'description' => 'World info section 1 image'],
            ['key' => 'world_info_2_title', 'value' => 'Expeditions', 'description' => 'World info section 2 title'],
            ['key' => 'world_info_2_description', 'value' => '', 'description' => 'World info section 2 description'],
            ['key' => 'world_info_2_image', 'value' => '', 'description' => 'World info section 2 image'],
            ['key' => 'world_info_3_title', 'value' => 'Section 3', 'description' => 'World info section 3 title'],
            ['key' => 'world_info_3_description', 'value' => '', 'description' => 'World info section 3 description'],
            ['key' => 'world_info_3_image', 'value' => '', 'description' => 'World info section 3 image'],
            ['key' => 'world_info_4_title', 'value' => 'Section 4', 'description' => 'World info section 4 title'],
            ['key' => 'world_info_4_description', 'value' => '', 'description' => 'World info section 4 description'],
            ['key' => 'world_info_4_image', 'value' => '', 'description' => 'World info section 4 image'],
        ];

        foreach($settings as $setting) {
            if(!\DB::table('site_settings')->where('key', $setting['key'])->exists()) {
                \DB::table('site_settings')->insert($setting);
            }
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        \DB::table('site_settings')->whereIn('key', [
            'world_info_1_title', 'world_info_1_description', 'world_info_1_image',
            'world_info_2_title', 'world_info_2_description', 'world_info_2_image',
            'world_info_3_title', 'world_info_3_description', 'world_info_3_image',
            'world_info_4_title', 'world_info_4_description', 'world_info_4_image',
        ])->delete();
    }
}
