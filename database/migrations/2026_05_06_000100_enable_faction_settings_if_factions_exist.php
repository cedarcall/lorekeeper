<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class EnableFactionSettingsIfFactionsExist extends Migration
{
    public function up()
    {
        if (!Schema::hasTable('site_settings') || !Schema::hasTable('factions')) {
            return;
        }

        $hasFactions = DB::table('factions')->count() > 0;
        if (!$hasFactions) {
            return;
        }

        $userFaction = DB::table('site_settings')->where('key', 'WE_user_factions')->first();
        if (!$userFaction) {
            DB::table('site_settings')->insert([
                'key' => 'WE_user_factions',
                'value' => 1,
                'description' => '0: Users do not have factions. 1: Users can freely change factions. 2: Only admins can freely change user factions.'
            ]);
        } elseif ((string) $userFaction->value === '0') {
            DB::table('site_settings')->where('key', 'WE_user_factions')->update(['value' => 1]);
        }

        $charFaction = DB::table('site_settings')->where('key', 'WE_character_factions')->first();
        if (!$charFaction) {
            DB::table('site_settings')->insert([
                'key' => 'WE_character_factions',
                'value' => 1,
                'description' => '0: Characters do not have factions. 1: Characters\' factions are the same as their owners. 2: Users can edit their own character factions. 3: Only admins can edit character factions.'
            ]);
        } elseif ((string) $charFaction->value === '0') {
            DB::table('site_settings')->where('key', 'WE_character_factions')->update(['value' => 1]);
        }
    }

    public function down()
    {
        // Intentionally no-op to avoid overwriting admin policy decisions.
    }
}
