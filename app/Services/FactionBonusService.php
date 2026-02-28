<?php namespace App\Services;

use DB;
use App\Models\Character\Character;
use App\Models\Character\CharacterCurrency;
use App\Models\WorldExpansion\Faction;
use App\Models\WorldExpansion\FactionRank;

class FactionBonusService extends Service
{
    /**
     * Reputation currency ID
     */
    const REPUTATION_CURRENCY_ID = 1;

    /**
     * Get the character's current reputation amount
     */
    public function getCharacterReputation(Character $character)
    {
        $currency = CharacterCurrency::where('character_id', $character->id)
            ->where('currency_id', self::REPUTATION_CURRENCY_ID)
            ->first();
        
        return $currency ? $currency->quantity : 0;
    }

    /**
     * Get the character's current faction rank based on reputation
     */
    public function getCharacterFactionRank(Character $character)
    {
        if (!$character->faction_id) {
            return null;
        }

        $reputation = $this->getCharacterReputation($character);
        $faction = $character->faction;

        if (!$faction) {
            return null;
        }

        // Get the highest rank the character qualifies for
        $rank = FactionRank::where('faction_id', $faction->id)
            ->where('breakpoint', '<=', $reputation)
            ->orderBy('breakpoint', 'desc')
            ->first();

        return $rank;
    }

    /**
     * Get the character's faction rank name
     */
    public function getCharacterFactionRankName(Character $character)
    {
        $rank = $this->getCharacterFactionRank($character);
        return $rank ? $rank->name : 'Unranked';
    }

    /**
     * Get faction bonuses for a character based on their rank
     * 
     * Returns an array of bonus types and their values
     */
    public function getCharacterBonuses(Character $character)
    {
        if (!$character->faction_id) {
            return [];
        }

        $faction = $character->faction;
        if (!$faction || !$faction->bonus_key) {
            return [];
        }

        $rank = $this->getCharacterFactionRank($character);
        if (!$rank) {
            return [];
        }

        return $this->getBonusesForFactionRank($faction->bonus_key, $rank->breakpoint);
    }

    /**
     * Get specific bonuses based on faction key and rank breakpoint
     */
    public function getBonusesForFactionRank($bonusKey, $breakpoint)
    {
        // Define bonus values per rank
        // Breakpoints: 0 (Initiate), 55 (Operative), 110 (Specialist), 220 (Agent), 440 (Paragon), 1600 (Custom)
        $bonuses = [];

        switch ($bonusKey) {
            case 'ivory_syndicate':
                // Bonus credits: Operative +3%, Specialist +6%, Agent +9%, Paragon +12%, Custom +30%
                $bonuses['credit_bonus'] = $this->getBonusByBreakpoint($breakpoint, [
                    0 => 0,      // Initiate
                    55 => 3,     // Operative
                    110 => 6,    // Specialist
                    220 => 9,    // Agent
                    440 => 12,   // Paragon
                    1600 => 30,  // Custom
                ]);
                break;

            case 'helios_accord':
                // Extra item chance: Operative 5%, Specialist 10%, Agent 15%, Paragon 25%, Custom 50%
                $bonuses['extra_item_chance'] = $this->getBonusByBreakpoint($breakpoint, [
                    0 => 0,
                    55 => 5,
                    110 => 10,
                    220 => 15,
                    440 => 25,
                    1600 => 50,
                ]);
                break;

            case 'astral_concord':
                // Bonus reputation: Operative +3%, Specialist +6%, Agent +9%, Paragon +12%, Custom +30%
                $bonuses['reputation_bonus'] = $this->getBonusByBreakpoint($breakpoint, [
                    0 => 0,
                    55 => 3,
                    110 => 6,
                    220 => 9,
                    440 => 12,
                    1600 => 30,
                ]);
                break;

            case 'red_sector':
                // Higher rarity chance: Operative 5%, Specialist 10%, Agent 15%, Paragon 25%, Custom 50%
                $bonuses['rarity_boost_chance'] = $this->getBonusByBreakpoint($breakpoint, [
                    0 => 0,
                    55 => 5,
                    110 => 10,
                    220 => 15,
                    440 => 25,
                    1600 => 50,
                ]);
                break;

            case 'orison_network':
                // Reduced planet visits: Operative -1, Specialist -2, Agent -3, Paragon -3, Custom -5
                $bonuses['planet_visit_reduction'] = $this->getBonusByBreakpoint($breakpoint, [
                    0 => 0,
                    55 => 1,
                    110 => 2,
                    220 => 3,
                    440 => 3,
                    1600 => 5,
                ]);
                break;
        }

        return $bonuses;
    }

    /**
     * Helper to get the bonus value for a given breakpoint
     */
    private function getBonusByBreakpoint($currentBreakpoint, $bonusMap)
    {
        $bonus = 0;
        foreach ($bonusMap as $breakpoint => $value) {
            if ($currentBreakpoint >= $breakpoint) {
                $bonus = $value;
            }
        }
        return $bonus;
    }

    /**
     * Apply credit bonus to an amount (for Ivory Syndicate)
     */
    public function applyCreditBonus(Character $character, $amount)
    {
        $bonuses = $this->getCharacterBonuses($character);
        if (isset($bonuses['credit_bonus']) && $bonuses['credit_bonus'] > 0) {
            $bonus = floor($amount * ($bonuses['credit_bonus'] / 100));
            return $amount + $bonus;
        }
        return $amount;
    }

    /**
     * Apply reputation bonus to an amount (for Astral Concord)
     */
    public function applyReputationBonus(Character $character, $amount)
    {
        $bonuses = $this->getCharacterBonuses($character);
        if (isset($bonuses['reputation_bonus']) && $bonuses['reputation_bonus'] > 0) {
            $bonus = floor($amount * ($bonuses['reputation_bonus'] / 100));
            return $amount + $bonus;
        }
        return $amount;
    }

    /**
     * Check if character should get an extra item (for Helios Accord)
     */
    public function shouldGetExtraItem(Character $character)
    {
        $bonuses = $this->getCharacterBonuses($character);
        if (isset($bonuses['extra_item_chance']) && $bonuses['extra_item_chance'] > 0) {
            return mt_rand(1, 100) <= $bonuses['extra_item_chance'];
        }
        return false;
    }

    /**
     * Check if character should get rarity boost (for Red Sector)
     */
    public function shouldGetRarityBoost(Character $character)
    {
        $bonuses = $this->getCharacterBonuses($character);
        if (isset($bonuses['rarity_boost_chance']) && $bonuses['rarity_boost_chance'] > 0) {
            return mt_rand(1, 100) <= $bonuses['rarity_boost_chance'];
        }
        return false;
    }

    /**
     * Get planet visit reduction (for Orison Network)
     */
    public function getPlanetVisitReduction(Character $character)
    {
        $bonuses = $this->getCharacterBonuses($character);
        return $bonuses['planet_visit_reduction'] ?? 0;
    }

    /**
     * Get a human-readable description of all active bonuses for a character
     */
    public function getBonusDescription(Character $character)
    {
        $bonuses = $this->getCharacterBonuses($character);
        $descriptions = [];

        if (isset($bonuses['credit_bonus']) && $bonuses['credit_bonus'] > 0) {
            $descriptions[] = "+{$bonuses['credit_bonus']}% Credits";
        }
        if (isset($bonuses['extra_item_chance']) && $bonuses['extra_item_chance'] > 0) {
            $descriptions[] = "{$bonuses['extra_item_chance']}% Extra Item Chance";
        }
        if (isset($bonuses['reputation_bonus']) && $bonuses['reputation_bonus'] > 0) {
            $descriptions[] = "+{$bonuses['reputation_bonus']}% Reputation";
        }
        if (isset($bonuses['rarity_boost_chance']) && $bonuses['rarity_boost_chance'] > 0) {
            $descriptions[] = "{$bonuses['rarity_boost_chance']}% Rarity Boost Chance";
        }
        if (isset($bonuses['planet_visit_reduction']) && $bonuses['planet_visit_reduction'] > 0) {
            $descriptions[] = "-{$bonuses['planet_visit_reduction']} Planet Visits Required";
        }

        return implode(', ', $descriptions);
    }
}
