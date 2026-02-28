<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class AddRevokedStatusToExpeditionSubmissions extends Migration
{
    public function up()
    {
        DB::statement("ALTER TABLE expedition_submissions MODIFY COLUMN status ENUM('pending', 'approved', 'rejected', 'revoked') NOT NULL DEFAULT 'pending'");
    }

    public function down()
    {
        // First set any 'revoked' statuses back to 'rejected' to avoid data loss
        DB::table('expedition_submissions')->where('status', 'revoked')->update(['status' => 'rejected']);
        
        // Then remove 'revoked' from the enum
        DB::statement("ALTER TABLE expedition_submissions MODIFY COLUMN status ENUM('pending', 'approved', 'rejected') NOT NULL DEFAULT 'pending'");
    }
}
