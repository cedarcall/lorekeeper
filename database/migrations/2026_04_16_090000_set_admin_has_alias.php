<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class SetAdminHasAlias extends Migration
{
    /**
     * Skip the alias (external account linking) requirement for the admin user.
     */
    public function up()
    {
        $adminUserId = DB::table('site_settings')->where('key', 'admin_user')->value('value');
        if ($adminUserId) {
            DB::table('users')->where('id', $adminUserId)->update(['has_alias' => 1]);
        }
    }

    public function down()
    {
        // no-op
    }
}
