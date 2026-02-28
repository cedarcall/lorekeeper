<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;
use App\Facades\Notifications;
use App\Models\Planet;
use App\Models\PlanetInfoTier;
use App\Models\UserPlanetExpedition;
use App\Models\ExpeditionSubmission;
use App\Models\FeaturedPlanet;
use App\Models\UnlockedContract;
use App\Models\Contract;
use App\Models\Event;
use App\Models\Item\Item;
use App\Models\User\UserItem;
use App\Models\User\UserEventItemRoll;
use App\Models\Notification;
use App\Models\User\User;
use App\Models\Rank\RankPower;
use App\Models\Currency\Currency;
use App\Services\CurrencyManager;
use App\Services\InventoryManager;
use App\Services\ModifierItemService;
use Carbon\Carbon;

class ExpeditionService extends Service
{
    /**
     * Submits an expedition for a planet.
     *
     * @param  Planet  $planet
     * @param  \App\Models\User\User  $user
     * @param  array  $data
     * @return bool|ExpeditionSubmission
     */
    public function submitExpedition($planet, $user, $data)
    {
        DB::beginTransaction();
        
        try {
            $galaxy = $planet->galaxy;
            
            // Check if galaxy is current or user is discoverer
            if (!$galaxy->is_current && !$planet->isDiscoveredByUser($user->id)) {
                throw new \Exception("You can only submit expeditions to planets in the current galaxy, unless you are the discoverer.");
            }

            $resourceBoostItemId = isset($data['resource_boost_item_id']) ? (int) $data['resource_boost_item_id'] : null;
            $resourceBoostTargetItemId = isset($data['resource_boost_target_item_id']) ? (int) $data['resource_boost_target_item_id'] : null;

            if($resourceBoostItemId) {
                $boostItem = Item::find($resourceBoostItemId);
                if(!$boostItem || strtolower($boostItem->name) !== 'survey beacon') {
                    throw new \Exception('Invalid expedition boost item selected.');
                }

                if(!$resourceBoostTargetItemId) {
                    throw new \Exception('Please choose a resource target for Survey Beacon.');
                }

                $featuredPlanet = FeaturedPlanet::with('lootTable.loot')
                    ->where('is_active', 1)
                    ->where('planet_id', $planet->id)
                    ->first();
                if(!$featuredPlanet || !$featuredPlanet->lootTable) {
                    throw new \Exception('Survey Beacon cannot be used on this planet right now.');
                }

                $rollableItemIds = $featuredPlanet->lootTable->loot
                    ->where('rewardable_type', 'Item')
                    ->pluck('rewardable_id')
                    ->unique()
                    ->toArray();
                if(!in_array($resourceBoostTargetItemId, $rollableItemIds)) {
                    throw new \Exception('Selected resource is not available on this planet.');
                }

                $userItemStack = UserItem::where('user_id', $user->id)
                    ->where('item_id', $boostItem->id)
                    ->where('count', '>', 0)
                    ->first();
                if(!$userItemStack) {
                    throw new \Exception('You do not have a Survey Beacon to use.');
                }

                if(!(new InventoryManager)->debitStack($user, 'Expedition Submission Item Use', ['data' => 'Used Survey Beacon for '.$planet->name], $userItemStack, 1)) {
                    throw new \Exception('Failed to use Survey Beacon.');
                }
            }
            
            // Create submission
            $submission = ExpeditionSubmission::create([
                'user_id' => $user->id,
                'planet_id' => $planet->id,
                'title' => $data['title'] ?? null,
                'status' => 'pending',
                'submission_type' => $data['submission_type'] ?? 'art',
                'description' => $data['description'] ?? null,
                'image_extension' => $data['image_extension'] ?? null,
                'image_name' => $data['image_name'] ?? null,
                'resource_boost_item_id' => $resourceBoostItemId,
                'resource_boost_target_item_id' => $resourceBoostTargetItemId,
            ]);
            
            // Notify all staff with edit_pages power
            $this->notifyStaff($submission, $planet, $user);
            
            return $this->commitReturn($submission);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }
    
    /**
     * Approves an expedition submission and increments visit count.
     *
     * @param  ExpeditionSubmission  $submission
     * @param  \App\Models\User\User  $staff
     * @return bool
     */
    public function approveExpedition($submission, $staff = null)
    {
        DB::beginTransaction();
        
        try {
            $planet = $submission->planet;
            $user = $submission->user;
            
            // Get or create user expedition record
            $userExpedition = UserPlanetExpedition::firstOrCreate(
                ['user_id' => $user->id, 'planet_id' => $planet->id],
                ['visit_count' => 0, 'highest_unlocked_tier' => 0]
            );

            $modifierService = new ModifierItemService();
            $visitIncrement = 1;
            if($modifierService->consumeModifierCharge($user, 'Planetary Scanner Uplink', 1, 'Expedition Modifier Use', 'Planetary Scanner Uplink used for '.$planet->name)) {
                $visitIncrement = 2;
                Notifications::create('MODIFIER_ITEM_CONSUMED', $user, [
                    'item_name' => 'Planetary Scanner Uplink',
                    'use_context' => 'Expedition to <strong>'.$planet->name.'</strong> gained +1 extra visit.',
                ]);
            }
            
            // Increment visit count
            $userExpedition->visit_count += $visitIncrement;
            
            // Check if this visit unlocks a new tier
            $newTier = min($userExpedition->visit_count, $planet->infoTiers()->count());
            $userExpedition->highest_unlocked_tier = max($userExpedition->highest_unlocked_tier, $newTier);
            
            // Check if planet is now unlocked and user is first discoverer
            if ($userExpedition->visit_count >= $planet->unlock_threshold && !$userExpedition->is_discoverer) {
                // Check if planet has already been discovered
                if (!$planet->discoverer_id) {
                    $userExpedition->is_discoverer = true;
                    $planet->discoverer_id = $user->id;
                    $planet->discovered_at = now();
                    $planet->save();
                }
            }
            
            $userExpedition->save();
            
            // Update submission status
            $submission->status = 'approved';
            $submission->approved_at = now();
            $submission->save();
            
            // Randomly grant contract unlock item
            $this->tryGrantContractUnlock($user);

            // Grant credit and reputation rewards if amounts are specified
            $allRewardText = [];
            $currencyManager = new CurrencyManager();
            
            if ($submission->credit_reward > 0) {
                // Find the "Credit" currency
                $creditCurrency = Currency::where('name', 'Credit')->where('is_user_owned', 1)->first();
                if ($creditCurrency) {
                    if ($currencyManager->creditCurrency($staff, $user, 'Expedition Reward', 'Expedition approved: '.$planet->name, $creditCurrency, $submission->credit_reward)) {
                        $allRewardText[] = $creditCurrency->name.' x'.$submission->credit_reward;
                    }
                }
            }
            
            if ($submission->reputation_reward > 0) {
                // Find the "Reputation" currency
                $reputationCurrency = Currency::where('name', 'Reputation')->where('is_user_owned', 1)->first();
                if ($reputationCurrency) {
                    if ($currencyManager->creditCurrency($staff, $user, 'Expedition Reward', 'Expedition approved: '.$planet->name, $reputationCurrency, $submission->reputation_reward)) {
                        $allRewardText[] = $reputationCurrency->name.' x'.$submission->reputation_reward;
                    }
                }
            }

            // Featured planet loot reward
            $featuredPlanet = FeaturedPlanet::with('lootTable')
                ->where('is_active', 1)
                ->where('planet_id', $planet->id)
                ->first();
            if ($featuredPlanet && $featuredPlanet->lootTable) {
                // Get current active event for once-only item tracking
                $now = Carbon::now();
                $currentEvent = Event::where('is_visible', 1)
                    ->where(function($q) use ($now) {
                        $q->where(function($query) use ($now) {
                            $query->whereNotNull('start_at')
                                  ->where('start_at', '<=', $now)
                                  ->where(function($q2) use ($now) {
                                      $q2->whereNull('end_at')->orWhere('end_at', '>=', $now);
                                  });
                        })
                        ->orWhereNull('start_at');
                    })
                    ->first();
                $eventId = $currentEvent ? $currentEvent->id : null;

                $assets = createAssetsArray();
                $useSurveyBeacon = $submission->resource_boost_item_id && $submission->resource_boost_target_item_id;
                if($useSurveyBeacon) {
                    $boostItem = Item::find($submission->resource_boost_item_id);
                    if($boostItem && strtolower($boostItem->name) === 'survey beacon') {
                        $assets = $this->rollLootWithItemBoost($featuredPlanet->lootTable, (int) $submission->resource_boost_target_item_id, 1, 1.25, $user->id, $eventId);
                    }
                }

                if(!$this->hasAnyAssets($assets)) {
                    addAsset($assets, $featuredPlanet->lootTable, 1);
                }
                
                if ($rewards = fillUserAssets($assets, $staff, $user, 'Featured Planet Rewards', [
                    'data' => 'Received rewards for featured planet expedition: '.$planet->name
                ], $eventId)) {
                    $firstItemReward = null;
                    // Add loot rewards to the combined list
                    foreach ($rewards as $assetType) {
                        if (isset($assetType)) {
                            foreach ($assetType as $asset) {
                                $name = $asset['asset']->displayName ?? $asset['asset']->name;
                                $allRewardText[] = $name.' x'.$asset['quantity'];
                                if(!$firstItemReward && $asset['asset']->assetType == 'items') {
                                    $firstItemReward = $asset;
                                }
                            }
                        }
                    }

                    if($firstItemReward && $staff) {
                        Notifications::create('EXPEDITION_REWARD_REROLL', $user, [
                            'planet_name' => $planet->name,
                            'submission_id' => $submission->id,
                            'original_item_id' => $firstItemReward['asset']->id,
                            'original_item_name' => $firstItemReward['asset']->name,
                            'original_item_quantity' => $firstItemReward['quantity'],
                        ]);
                    }
                }
            }

            if($planet->has_hazard && $planet->hidden_item_id) {
                $hasCloak = $modifierService->consumeModifierCharge($user, 'Spore-Sealed Pathfinder Cloak', 1, 'Expedition Modifier Use', 'Spore-Sealed Pathfinder Cloak used for '.$planet->name);
                if($hasCloak) {
                    Notifications::create('MODIFIER_ITEM_CONSUMED', $user, [
                        'item_name' => 'Spore-Sealed Pathfinder Cloak',
                        'use_context' => 'Hazard protection applied on <strong>'.$planet->name.'</strong>.',
                    ]);

                    $hiddenItem = Item::find($planet->hidden_item_id);
                    if($hiddenItem) {
                        if((new InventoryManager)->creditItem($staff, $user, 'Expedition Hidden Reward', ['data' => 'Recovered hidden item from '.$planet->name], $hiddenItem, 1)) {
                            $allRewardText[] = $hiddenItem->name.' x1 (Hidden Hazard Item)';
                        }
                    }
                }
            }
            
            // Build combined reward text
            $rewardText = count($allRewardText) > 0 ? 'You received: '.implode(', ', $allRewardText).'. ' : '';
            
            // Notify user of approval
            if ($staff) {
                Notifications::create('EXPEDITION_APPROVED', $user, [
                    'planet_name' => $planet->name,
                    'submission_title' => $submission->title ?? 'Untitled',
                    'reward_text' => $rewardText,
                    'planet_id' => $planet->id,
                    'visit_gain' => $visitIncrement,
                ]);
            }
            
            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }
    
    /**
     * Rejects an expedition submission.
     *
     * @param  ExpeditionSubmission  $submission
     * @param  string  $notes
     * @param  \App\Models\User\User  $staff
     * @return bool
     */
    public function rejectExpedition($submission, $notes = null, $staff = null)
    {
        DB::beginTransaction();
        
        try {
            $submission->status = 'rejected';
            $submission->notes = $notes;
            $submission->save();
            
            // Notify user of rejection
            if ($staff) {
                $notesText = $notes ? 'Reason: "' . $notes . '"' : '';
                Notifications::create('EXPEDITION_REJECTED', $submission->user, [
                    'planet_name' => $submission->planet->name,
                    'submission_title' => $submission->title ?? 'Untitled',
                    'planet_id' => $submission->planet->id,
                    'notes_text' => $notesText
                ]);
            }
            
            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }
    
    /**
     * Takes down an approved expedition submission (reverses approval).
     *
     * @param  ExpeditionSubmission  $submission
     * @param  string  $reason
     * @param  \App\Models\User\User  $staff
     * @return bool
     */
    public function takedownExpedition($submission, $reason = null, $staff = null)
    {
        DB::beginTransaction();
        
        try {
            // Only allow takedown of approved submissions
            if ($submission->status !== 'approved') {
                throw new \Exception("Only approved submissions can be taken down.");
            }
            
            $planet = $submission->planet;
            $user = $submission->user;
            
            // Get user expedition record
            $userExpedition = UserPlanetExpedition::where('user_id', $user->id)
                ->where('planet_id', $planet->id)
                ->first();
            
            if ($userExpedition && $userExpedition->visit_count > 0) {
                // Decrease visit count
                $userExpedition->visit_count--;
                
                // Recalculate highest unlocked tier based on new visit count
                $newTier = min($userExpedition->visit_count, $planet->infoTiers()->count());
                $userExpedition->highest_unlocked_tier = $newTier;
                
                // Check if they're no longer the discoverer (if visit count is below threshold)
                if ($userExpedition->visit_count < $planet->unlock_threshold && $userExpedition->is_discoverer) {
                    $userExpedition->is_discoverer = false;
                    // Note: We don't remove discoverer_id from planet to preserve historical record
                }
                
                $userExpedition->save();
            }
            
            // Update submission status to revoked
            $submission->status = 'revoked';
            $submission->notes = $reason ?? 'This submission was taken down by staff.';
            $submission->save();
            
            // Notify user of takedown
            if ($staff) {
                $reasonText = $reason ? 'Reason: "' . $reason . '"' : 'No reason provided.';
                Notifications::create('EXPEDITION_REVOKED', $user, [
                    'planet_name' => $planet->name,
                    'submission_title' => $submission->title ?? 'Untitled',
                    'planet_id' => $planet->id,
                    'reason_text' => $reasonText
                ]);
            }
            
            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }
    
    /**
     * Attempts to grant a randomized contract unlock.
     * Rolls against randomizable contracts weighted by rarity_weight.
     *
     * @param  \App\Models\User\User  $user
     * @return void
     */
    private function tryGrantContractUnlock($user)
    {
        // Get all randomizable contracts
        $randomizableContracts = Contract::where('is_randomizable', true)->get();
        
        if ($randomizableContracts->isEmpty()) {
            return;
        }
        
        // For each contract, check if there's a drop chance
        foreach ($randomizableContracts as $contract) {
            if ($contract->unlock_contract_chance > 0) {
                $chance = rand(1, 100);
                
                if ($chance <= $contract->unlock_contract_chance) {
                    // Check if user doesn't already have this unlocked
                    $existing = UnlockedContract::where('user_id', $user->id)
                        ->where('contract_id', $contract->id)
                        ->first();
                    
                    if (!$existing) {
                        UnlockedContract::create([
                            'user_id' => $user->id,
                            'contract_id' => $contract->id
                        ]);
                    }
                }
            }
        }
    }
    
    /**
     * Gets planet info up to the user's unlocked tier.
     *
     * @param  Planet  $planet
     * @param  int | null  $userId
     * @return array
     */
    public function getPlanetInfo($planet, $userId = null)
    {
        $maxTier = 0;
        
        if ($userId) {
            $userExpedition = UserPlanetExpedition::where('user_id', $userId)
                ->where('planet_id', $planet->id)
                ->first();
            
            if ($userExpedition) {
                $maxTier = $userExpedition->highest_unlocked_tier;
            }
        }
        
        $tiers = $planet->infoTiers()
            ->where('tier_number', '<=', $maxTier)
            ->orderBy('tier_number')
            ->get();
        
        $info = [];
        foreach ($tiers as $tier) {
            $info[] = (array)$tier->info_data;
        }
        
        return $info;
    }
    
    /**
     * Notifies all staff with edit_pages power about a new expedition submission.
     *
     * @param  ExpeditionSubmission  $submission
     * @param  Planet  $planet
     * @param  \App\Models\User\User  $submitter
     * @return void
     */
    private function notifyStaff($submission, $planet, $submitter)
    {
        // Get all ranks with edit_pages power
        $rankIds = RankPower::where('power', 'edit_pages')->pluck('rank_id');
        
        // Get all users with those ranks
        $staffUsers = User::whereIn('rank_id', $rankIds)->get();
        
        foreach ($staffUsers as $staff) {
            Notifications::create('EXPEDITION_SUBMITTED', $staff, [
                'planet_name' => $planet->name,
                'submission_title' => $submission->title ?? 'Untitled',
                'user_url' => $submitter->url,
                'user_name' => $submitter->name,
                'submission_id' => $submission->id
            ]);
        }
    }

    /**
     * Builds a readable rewards string for notifications.
     *
     * @param  array  $rewards
     * @return string
     */
    private function formatRewardsText($rewards)
    {
        $resultElements = [];
        foreach ($rewards as $assetType) {
            if (isset($assetType)) {
                foreach ($assetType as $asset) {
                    $name = $asset['asset']->displayName ?? $asset['asset']->name;
                    $resultElements[] = $name.' x'.$asset['quantity'];
                }
            }
        }

        if (!count($resultElements)) {
            return '';
        }

        return 'You received: '.implode(', ', $resultElements).'.';
    }

    private function rollLootWithItemBoost($lootTable, $targetItemId, $quantity = 1, $boostMultiplier = 1.25, $userId = null, $eventId = null)
    {
        $rewards = createAssetsArray();
        $loot = $lootTable->loot;
        if(!$loot || !$loot->count()) {
            return $rewards;
        }

        $adjustedWeights = [];
        $totalWeight = 0;
        foreach($loot as $entry) {
            $weight = (int) $entry->weight;
            if($entry->rewardable_type == 'Item' && (int) $entry->rewardable_id === (int) $targetItemId) {
                $weight = max(1, (int) round($weight * $boostMultiplier));
            }
            $adjustedWeights[$entry->id] = $weight;
            $totalWeight += $weight;
        }

        if($totalWeight <= 0) {
            return $rewards;
        }

        for($i = 0; $i < $quantity; $i++) {
            $roll = mt_rand(0, $totalWeight - 1);
            $result = null;
            $count = 0;
            foreach($loot as $entry) {
                $count += $adjustedWeights[$entry->id];
                if($roll < $count) {
                    $result = $entry;
                    break;
                }
            }

            if(!$result) {
                continue;
            }

            if($result->rewardable_type == 'LootTable') {
                $rewards = mergeAssetsArrays($rewards, $result->reward->roll($result->quantity, $userId, $eventId));
            }
            elseif($result->rewardable_type == 'ItemCategory' || $result->rewardable_type == 'ItemCategoryRarity') {
                $rewards = mergeAssetsArrays($rewards, $lootTable->rollCategory($result->rewardable_id, $result->quantity, (isset($result->data['criteria']) ? $result->data['criteria'] : null), (isset($result->data['rarity']) ? $result->data['rarity'] : null), $userId, $eventId));
            }
            elseif($result->rewardable_type == 'ItemRarity') {
                $rewards = mergeAssetsArrays($rewards, $lootTable->rollRarityItem($result->quantity, $result->data['criteria'], $result->data['rarity'], $userId, $eventId));
            }
            else {
                if($result->rewardable_type == 'Item' && $userId && $eventId) {
                    $item = $result->reward;
                    if($item && $item->can_only_roll_once) {
                        if(UserEventItemRoll::hasUserRolled($userId, $item->id, $eventId)) {
                            continue;
                        }
                        UserEventItemRoll::recordRoll($userId, $item->id, $eventId);
                    }
                }
                addAsset($rewards, $result->reward, $result->quantity);
            }
        }

        return $rewards;
    }

    private function hasAnyAssets($assets)
    {
        foreach($assets as $entries) {
            if(count($entries)) {
                return true;
            }
        }
        return false;
    }
}
