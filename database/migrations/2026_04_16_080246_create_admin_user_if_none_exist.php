<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class CreateAdminUserIfNoneExist extends Migration
{
    /**
     * If no users exist and ADMIN_EMAIL + ADMIN_PASSWORD env vars are set,
     * create an admin user via raw DB inserts (no models/services).
     */
    public function up()
    {
        // Skip if users already exist
        if (DB::table('users')->count() > 0) {
            return;
        }

        $email = env('ADMIN_EMAIL');
        $password = env('ADMIN_PASSWORD');
        $name = env('ADMIN_USER', 'Admin');

        if (!$email || !$password) {
            return;
        }

        // Ensure ranks exist
        if (DB::table('ranks')->count() === 0) {
            DB::table('ranks')->insert([
                ['name' => 'Admin', 'description' => 'Site admin.', 'sort' => 1, 'color' => null],
                ['name' => 'Member', 'description' => 'Regular member.', 'sort' => 0, 'color' => null],
            ]);
        }

        $adminRankId = DB::table('ranks')->orderBy('sort', 'desc')->value('id');

        $userId = DB::table('users')->insertGetId([
            'name' => $name,
            'email' => $email,
            'rank_id' => $adminRankId,
            'password' => Hash::make($password),
            'birthday' => '1970-01-01',
            'has_alias' => 0,
            'email_verified_at' => Carbon::now(),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        // Create associated rows
        if (\Schema::hasTable('user_settings')) {
            DB::table('user_settings')->insert(['user_id' => $userId]);
        }
        if (\Schema::hasTable('user_profiles')) {
            DB::table('user_profiles')->insert(['user_id' => $userId]);
        }

        // Set as admin user in site settings
        DB::table('site_settings')->updateOrInsert(
            ['key' => 'admin_user'],
            ['value' => $userId, 'description' => "ID of the site's admin user."]
        );
    }

    /**
     * This migration is not reversible in a meaningful way.
     */
    public function down()
    {
        // no-op
    }
}
