<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SitePage;

class PageSeeder extends Seeder
{
    public function run()
    {
        $pages = [
            ['key' => 'monthly-event', 'title' => 'Monthly Event', 'content' => '<p>Coming soon.</p>'],
            ['key' => 'contracts', 'title' => 'Contracts', 'content' => '<p>Coming soon.</p>'],
            ['key' => 'expeditions', 'title' => 'Expeditions', 'content' => '<p>Coming soon.</p>'],
            ['key' => 'featured-planet', 'title' => 'Featured Planet', 'content' => '<p>Coming soon.</p>'],
            ['key' => 'current-galaxy', 'title' => 'Current Galaxy', 'content' => '<p>Coming soon.</p>'],
        ];

        foreach ($pages as $p) {
            SitePage::updateOrCreate([
                'key' => $p['key']
            ], [
                'title' => $p['title'],
                'text' => $p['content'],
                'parsed_text' => function_exists('parse') ? parse($p['content']) : $p['content'],
                'is_visible' => 1,
            ]);
        }
    }
}
