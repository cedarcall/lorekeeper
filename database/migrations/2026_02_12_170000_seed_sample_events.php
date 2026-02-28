<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Carbon\Carbon;

class SeedSampleEvents extends Migration
{
    public function up()
    {
        if (Schema::hasTable('events')) {
            // Only seed if events table is empty
            $count = DB::table('events')->count();
            if ($count == 0) {
                DB::table('events')->insert([
                    [
                        'slug' => 'feb-2026',
                        'name' => 'Monthly Event — February 2026',
                        'title' => 'Monthly Event — February 2026',
                        'content' => '<p>Welcome to February event! Details coming.</p>',
                        'parsed_text' => '<p>Welcome to February event! Details coming.</p>',
                        'header_image' => null,
                        'start_at' => Carbon::now()->subDays(5),
                        'end_at' => Carbon::now()->addDays(5),
                        'is_visible' => 1,
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ],
                    [
                        'slug' => 'jan-2026',
                        'name' => 'Monthly Event — January 2026',
                        'title' => 'Monthly Event — January 2026',
                        'content' => '<p>January recap.</p>',
                        'parsed_text' => '<p>January recap.</p>',
                        'header_image' => null,
                        'start_at' => Carbon::now()->subMonths(1)->subDays(2),
                        'end_at' => Carbon::now()->subMonths(1)->addDays(3),
                        'is_visible' => 1,
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ],
                ]);
            }
        }
    }

    public function down()
    {
        if (Schema::hasTable('events')) {
            DB::table('events')->whereIn('slug', ['feb-2026', 'jan-2026'])->delete();
        }
    }
}
