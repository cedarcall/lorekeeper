<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Event;
use Carbon\Carbon;

class MonthlyEventSeeder extends Seeder
{
    public function run()
    {
        $events = [
            [
                'slug' => 'feb-2026',
                'title' => 'Monthly Event — February 2026',
                'content' => '<p>Welcome to February event! Details coming.</p>',
                'parsed_text' => function_exists('parse') ? parse('<p>Welcome to February event! Details coming.</p>') : '<p>Welcome to February event! Details coming.</p>',
                'start_at' => Carbon::now()->subDays(5),
                'end_at' => Carbon::now()->addDays(5),
                'is_visible' => 1,
            ],
            [
                'slug' => 'jan-2026',
                'title' => 'Monthly Event — January 2026',
                'content' => '<p>January recap.</p>',
                'parsed_text' => function_exists('parse') ? parse('<p>January recap.</p>') : '<p>January recap.</p>',
                'start_at' => Carbon::now()->subMonths(1)->subDays(2),
                'end_at' => Carbon::now()->subMonths(1)->addDays(3),
                'is_visible' => 1,
            ],
        ];

        foreach ($events as $e) {
            // Ensure `name` is present to satisfy older schemas that require it
            if (!isset($e['name'])) $e['name'] = $e['title'];
            Event::updateOrCreate(['slug' => $e['slug']], $e);
        }
    }
}
