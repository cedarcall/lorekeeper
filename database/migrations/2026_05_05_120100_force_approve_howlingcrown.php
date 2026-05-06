<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class ForceApproveHowlingcrown extends Migration
{
    public function up()
    {
        if (!Schema::hasTable('users')) {
            return;
        }

        $user = DB::table('users')->where('name', 'Howlingcrown')->first();
        if (!$user) {
            return;
        }

        DB::table('users')
            ->where('id', $user->id)
            ->update(['email_verified_at' => now()]);

        if (Schema::hasTable('user_verification_applications')) {
            $existingApproved = DB::table('user_verification_applications')
                ->where('user_id', $user->id)
                ->where('status', 'approved')
                ->exists();

            if (!$existingApproved) {
                DB::table('user_verification_applications')->insert([
                    'user_id' => $user->id,
                    'social_media_link' => 'https://example.com',
                    'join_reason' => 'Legacy trusted account auto-approved by migration.',
                    'rules_confirmed' => 1,
                    'voidi_species_answer' => 'N/A',
                    'status' => 'approved',
                    'review_notes' => 'Force approved during verification system migration.',
                    'reviewed_at' => now(),
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }

    public function down()
    {
        // Intentionally left blank to avoid revoking manual trust decisions.
    }
}
