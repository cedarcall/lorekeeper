<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class ForceCreateAdmin extends Command
{
    protected $signature = 'force-create-admin';
    protected $description = 'Force-creates an admin user from ADMIN_EMAIL/ADMIN_PASSWORD env vars. Skips if users already exist.';

    public function handle()
    {
        $this->info('>>> force-create-admin: starting');

        // If users already exist, skip
        $userCount = DB::table('users')->count();
        $this->info(">>> Current user count: {$userCount}");
        if ($userCount > 0) {
            $this->info('>>> Users exist, skipping admin creation.');
            return 0;
        }

        $email = env('ADMIN_EMAIL');
        $password = env('ADMIN_PASSWORD');
        $name = env('ADMIN_USER', 'Admin');

        $this->info(">>> Email from env: " . ($email ? 'SET' : 'EMPTY'));
        $this->info(">>> Password from env: " . ($password ? 'SET' : 'EMPTY'));

        if (!$email || !$password) {
            $this->error('>>> ADMIN_EMAIL or ADMIN_PASSWORD env vars not set. Cannot create admin.');
            return 1;
        }

        DB::beginTransaction();
        try {
            // Ensure ranks exist
            $rankCount = DB::table('ranks')->count();
            $this->info(">>> Rank count: {$rankCount}");

            if ($rankCount === 0) {
                DB::table('ranks')->insert([
                    ['name' => 'Admin', 'description' => 'Site admin.', 'sort' => 1],
                    ['name' => 'Member', 'description' => 'Regular member.', 'sort' => 0],
                ]);
                $this->info('>>> Created default ranks.');
            }

            $adminRankId = DB::table('ranks')->orderBy('sort', 'desc')->value('id');
            $this->info(">>> Admin rank ID: {$adminRankId}");

            // Create user via raw DB insert to avoid any model/service issues
            $userId = DB::table('users')->insertGetId([
                'name' => $name,
                'email' => $email,
                'rank_id' => $adminRankId,
                'password' => Hash::make($password),
                'birthday' => '1970-01-01',
                'has_alias' => 1,
                'email_verified_at' => Carbon::now(),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
            $this->info(">>> Created user ID: {$userId}");

            // Create user_settings row
            if (DB::getSchemaBuilder()->hasTable('user_settings')) {
                DB::table('user_settings')->insert(['user_id' => $userId]);
                $this->info('>>> Created user_settings row.');
            }

            // Create user_profiles row
            if (DB::getSchemaBuilder()->hasTable('user_profiles')) {
                DB::table('user_profiles')->insert(['user_id' => $userId]);
                $this->info('>>> Created user_profiles row.');
            }

            // Update admin_user site setting
            DB::table('site_settings')->updateOrInsert(
                ['key' => 'admin_user'],
                ['value' => $userId, 'description' => "ID of the site's admin user."]
            );
            $this->info('>>> Updated admin_user site setting.');

            DB::commit();
            $this->info(">>> Admin user '{$name}' created successfully! You can now log in.");
            return 0;
        } catch (\Throwable $e) {
            DB::rollBack();
            $this->error('>>> FAILED: ' . $e->getMessage());
            $this->error('>>> Trace: ' . $e->getTraceAsString());
            return 1;
        }
    }
}
