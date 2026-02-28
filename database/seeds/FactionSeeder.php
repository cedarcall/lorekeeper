<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\WorldExpansion\FactionType;
use App\Models\WorldExpansion\Faction;
use App\Models\WorldExpansion\FactionRank;
use DB;

class FactionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create a faction type if none exists
        $factionType = FactionType::first();
        if (!$factionType) {
            $factionType = FactionType::create([
                'name' => 'Organization',
                'names' => 'Organizations',
                'description' => 'Major organizations operating across the galaxy.',
                'sort' => 0,
            ]);
        }

        // Define the standard ranks (shared across all factions)
        $rankStructure = [
            ['name' => 'Initiate', 'breakpoint' => 0, 'sort' => 0, 'is_open' => 1],
            ['name' => 'Operative', 'breakpoint' => 55, 'sort' => 1, 'is_open' => 1],
            ['name' => 'Specialist', 'breakpoint' => 110, 'sort' => 2, 'is_open' => 1],
            ['name' => 'Agent', 'breakpoint' => 220, 'sort' => 3, 'is_open' => 1],
            ['name' => 'Paragon', 'breakpoint' => 440, 'sort' => 4, 'is_open' => 1],
            ['name' => 'Custom Title', 'breakpoint' => 1600, 'sort' => 5, 'is_open' => 0],
        ];

        // Define factions
        $factions = [
            [
                'name' => 'The Ivory Syndicate',
                'slug' => 'ivory-syndicate',
                'summary' => 'Smugglers, black markets, and the infamous Ivory Lane. Everything has a price—even silence.',
                'description' => '<p><strong>Core Belief:</strong> Everything has a price. Even silence.</p>
<p><strong>Morals:</strong> The Syndicate does not claim to be good or evil—only necessary. They believe control is an illusion, and freedom is found in information, leverage, and adaptability. Loyalty is transactional, but betrayal is never forgiven.</p>
<p><strong>Current Stance:</strong> Operating primarily out of The Ivory Lane, the Syndicate controls much of the galaxy\'s underground trade: illegal tech, restricted creatures, forged permits, stolen data. Officially denounced by every governing body. Quietly relied upon by many of them.</p>
<p><strong>Faction Bonus:</strong> Earn bonus credits based on rank (Operative +3%, Specialist +6%, Agent +9%, Paragon +12%, Custom +30%).</p>',
                'bonus_key' => 'ivory_syndicate',
            ],
            [
                'name' => 'The Helios Accord',
                'slug' => 'helios-accord',
                'summary' => 'Scientists, researchers, and explorers. Understanding is the highest form of survival.',
                'description' => '<p><strong>Core Belief:</strong> Understanding is the highest form of survival.</p>
<p><strong>Morals:</strong> The Accord prioritizes knowledge above ideology. They believe discovery justifies risk, and that ignorance is the universe\'s most dangerous force. Ethical lines exist—but are constantly debated.</p>
<p><strong>Current Stance:</strong> The Helios Accord leads most sanctioned research efforts, from xenobiology to star-forge remnants. They are responsible for many modern advances—and a few catastrophes no one likes to talk about. Neutral in most conflicts, but increasingly pressured to take sides.</p>
<p><strong>Faction Bonus:</strong> Chance for an extra item from loot rolls (Operative 5%, Specialist 10%, Agent 15%, Paragon 25%, Custom 50%).</p>',
                'bonus_key' => 'helios_accord',
            ],
            [
                'name' => 'The Astral Concord',
                'slug' => 'astral-concord',
                'summary' => 'Government, law, and authority. Order must exist, or everything falls apart.',
                'description' => '<p><strong>Core Belief:</strong> Order must exist, or everything falls apart.</p>
<p><strong>Morals:</strong> The Concord believes stability outweighs individual freedom. Laws are imperfect, but necessary. Sacrifices are justified if they prevent greater collapse. Compassion exists—but always secondary to control.</p>
<p><strong>Current Stance:</strong> The Astral Concord governs most recognized systems and enforces interstellar law. Their reach is vast but strained, stretched thin by unrest, unexplored regions, and factions that refuse compliance. Publicly committed to peace. Privately preparing for escalation.</p>
<p><strong>Faction Bonus:</strong> Earn bonus reputation based on rank (Operative +3%, Specialist +6%, Agent +9%, Paragon +12%, Custom +30%).</p>',
                'bonus_key' => 'astral_concord',
            ],
            [
                'name' => 'The Red Sector',
                'slug' => 'red-sector',
                'summary' => 'Hunters, warriors, and survivalists. Strength is earned. Survival is proof of worth.',
                'description' => '<p><strong>Core Belief:</strong> Strength is earned. Survival is proof of worth.</p>
<p><strong>Morals:</strong> The Red Sector value resilience, self-sufficiency, and personal honor. They believe the universe is hostile by nature, and only those who adapt, hunt, and endure deserve to shape it. Mercy is respected—but never expected.</p>
<p><strong>Current Stance:</strong> The Red Sector operate on the edges of mapped space, hunting dangerous creatures, clearing hostile territories, and taking contracts others won\'t. They\'re respected for their effectiveness, feared for their ruthlessness, and largely uninterested in politics unless it threatens their way of life.</p>
<p><strong>Faction Bonus:</strong> Chance for higher rarity items from loot tables (Operative 5%, Specialist 10%, Agent 15%, Paragon 25%, Custom 50%).</p>',
                'bonus_key' => 'red_sector',
            ],
            [
                'name' => 'The Orison Network',
                'slug' => 'orison-network',
                'summary' => 'Traders, archivists, and scholars. What is mapped can be understood. What is recorded can endure.',
                'description' => '<p><strong>Core Belief:</strong> What is mapped can be understood. What is recorded can endure.</p>
<p><strong>Morals:</strong> The Orison Network values truth, documentation, and exchange—of goods, ideas, and history. They believe trade binds civilizations together, and knowledge should circulate rather than stagnate.</p>
<p><strong>Current Stance:</strong> The Orison Network maintains star charts, trade routes, historical records, and cultural archives. Many independent traders and scholars fly under their banner. While officially neutral, their records and routes give them quiet influence across every faction.</p>
<p><strong>Faction Bonus:</strong> Reduced planet visits required for full unlock (Operative -1, Specialist -2, Agent -3, Paragon -3, Custom -5).</p>',
                'bonus_key' => 'orison_network',
            ],
        ];

        foreach ($factions as $index => $factionData) {
            // Check if faction already exists
            $existingFaction = Faction::where('slug', $factionData['slug'])->first();
            if ($existingFaction) {
                echo "Faction '{$factionData['name']}' already exists, skipping...\n";
                continue;
            }

            // Create faction
            $faction = Faction::create([
                'name' => $factionData['name'],
                'slug' => $factionData['slug'],
                'summary' => $factionData['summary'],
                'description' => $factionData['description'],
                'parsed_description' => $factionData['description'],
                'type_id' => $factionType->id,
                'is_active' => 1,
                'is_character_faction' => 1,
                'is_user_faction' => 0,
                'bonus_key' => $factionData['bonus_key'],
                'sort' => $index,
            ]);

            echo "Created faction: {$faction->name}\n";

            // Create ranks for this faction
            foreach ($rankStructure as $rankData) {
                FactionRank::create([
                    'faction_id' => $faction->id,
                    'name' => $rankData['name'],
                    'breakpoint' => $rankData['breakpoint'],
                    'sort' => $rankData['sort'],
                    'is_open' => $rankData['is_open'],
                ]);
            }

            echo "  Created {$faction->name} ranks\n";
        }

        echo "\nFaction seeding complete!\n";
    }
}
