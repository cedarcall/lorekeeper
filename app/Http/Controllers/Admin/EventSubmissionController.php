<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\EventSubmission;
use App\Models\Event;
use App\Models\Loot\LootTable;
use App\Models\Currency\Currency;
use App\Models\Item\Item;
use App\Models\User\UserAward;
use App\Models\User\UserEventItemRoll;
use App\Models\Character\Character;
use App\Facades\Notifications;
use App\Services\CurrencyManager;
use Auth;
use Carbon\Carbon;

class EventSubmissionController extends Controller
{
    /**
     * Show the event submissions index.
     */
    public function getIndex(Request $request)
    {
        $submissions = EventSubmission::with(['user', 'event'])
            ->when($request->get('status'), function($query) use ($request) {
                return $query->where('status', $request->get('status'));
            }, function($query) {
                return $query->where('status', 'pending');
            })
            ->orderBy('created_at', 'desc')
            ->paginate(20);

        return view('admin.event_submissions.index', [
            'submissions' => $submissions
        ]);
    }

    /**
     * Show a specific submission.
     */
    public function getSubmission($id)
    {
        $submission = EventSubmission::with(['user', 'event', 'staff'])->findOrFail($id);
        
        // Get the user's characters for reputation reward dropdown
        $characters = [];
        if ($submission->user) {
            $characters = Character::where('user_id', $submission->user->id)
                ->where('is_visible', 1)
                ->orderBy('slug')
                ->pluck('slug', 'id');
        }

        return view('admin.event_submissions.submission', [
            'submission' => $submission,
            'characters' => $characters
        ]);
    }

    /**
     * Approve a submission.
     */
    public function postApprove(Request $request, $id)
    {
        $request->validate([
            'credit_reward' => 'nullable|integer|min:0|max:999999',
            'reputation_reward' => 'nullable|integer|min:0|max:999999',
            'character_id' => 'nullable|integer|exists:characters,id'
        ]);

        $submission = EventSubmission::with('event')->findOrFail($id);
        $user = $submission->user;
        $event = $submission->event;
        $staff = Auth::user();
        
        // Store rewards on submission
        $creditReward = $request->input('credit_reward', 0);
        $reputationReward = $request->input('reputation_reward', 0);
        $characterId = $request->input('character_id');
        
        $submission->update([
            'status' => 'approved',
            'staff_notes' => $request->staff_notes,
            'approved_by' => $staff->id,
            'approved_at' => Carbon::now(),
            'credit_reward' => $creditReward,
            'reputation_reward' => $reputationReward,
        ]);

        // Track all rewards awarded
        $allRewardText = [];
        $currencyManager = new CurrencyManager();

        // Award credits
        if ($creditReward > 0) {
            $creditCurrency = Currency::where('name', 'Credit')->where('is_user_owned', 1)->first();
            if ($creditCurrency) {
                if ($currencyManager->creditCurrency($staff, $user, 'Event Reward', 'Event submission approved: '.($event->title ?? $event->name), $creditCurrency, $creditReward)) {
                    $allRewardText[] = $creditCurrency->name.' x'.$creditReward;
                }
            }
        }

        // Award reputation to character
        if ($reputationReward > 0 && $characterId) {
            $reputationCurrency = Currency::where('name', 'Reputation')->where('is_character_owned', 1)->first();
            $character = Character::find($characterId);
            if ($reputationCurrency && $character) {
                if ($currencyManager->creditCurrency($staff, $character, 'Event Reward', 'Event submission approved: '.($event->title ?? $event->name), $reputationCurrency, $reputationReward)) {
                    $allRewardText[] = $reputationCurrency->name.' x'.$reputationReward.' (to '.$character->fullName.')';
                }
            }
        }

        // Award badge if event has one and user doesn't already have it
        if ($event && $event->award_id) {
            $existingBadge = UserAward::where('user_id', $user->id)
                ->where('award_id', $event->award_id)
                ->first();
            
            if (!$existingBadge) {
                UserAward::create([
                    'user_id' => $user->id,
                    'award_id' => $event->award_id,
                    'data' => json_encode(['source' => 'Event Submission #'.$submission->id, 'event' => $event->title ?? $event->name])
                ]);
                
                $award = $event->award;
                $allRewardText[] = ($award->name ?? 'Event Badge').' (Badge)';
                
                // Send badge notification
                Notifications::create('EVENT_BADGE_EARNED', $user, [
                    'award_name' => $award->name ?? 'Event Badge',
                    'event_name' => $event->title ?? $event->name,
                    'event_slug' => $event->slug,
                ]);
            }
        }

        // Roll loot from event's loot table
        if ($event && $event->loot_table_id && $event->lootTable) {
            $assets = createAssetsArray();
            $useSurveyBeacon = $submission->resource_boost_item_id && $submission->resource_boost_target_item_id;
            if($useSurveyBeacon) {
                $boostItem = Item::find($submission->resource_boost_item_id);
                if($boostItem && strtolower($boostItem->name) === 'survey beacon') {
                    $assets = $this->rollLootWithItemBoost($event->lootTable, (int) $submission->resource_boost_target_item_id, 1, 1.25, $user->id, $event->id);
                }
            }

            if(!$this->hasAnyAssets($assets)) {
                addAsset($assets, $event->lootTable, 1);
            }
            
            if ($rewards = fillUserAssets($assets, $staff, $user, 'Event Rewards', [
                'data' => 'Received rewards for event submission: '.($event->title ?? $event->name)
            ], $event->id)) {
                // Add loot rewards to the combined list
                foreach ($rewards as $assetType) {
                    if (isset($assetType)) {
                        foreach ($assetType as $asset) {
                            $name = $asset['asset']->displayName ?? $asset['asset']->name;
                            $allRewardText[] = $name.' x'.$asset['quantity'];
                        }
                    }
                }
            }
        }

        // Build combined reward text
        $rewardText = count($allRewardText) > 0 ? 'Rewards: '.implode(', ', $allRewardText).'. ' : '';

        // Notify user
        Notifications::create('EVENT_SUBMISSION_APPROVED', $user, [
            'submission_title' => $submission->title ?? 'Untitled',
            'event_name' => $event->name ?? $event->title,
            'event_slug' => $event->slug,
            'reward_text' => $rewardText,
        ]);

        flash('Submission approved! User has been awarded: '.(count($allRewardText) > 0 ? implode(', ', $allRewardText) : 'No additional rewards'))->success();
        return redirect()->to('admin/event-submissions');
    }

    /**
     * Reject a submission.
     */
    public function postReject(Request $request, $id)
    {
        $submission = EventSubmission::findOrFail($id);
        
        $submission->update([
            'status' => 'rejected',
            'staff_notes' => $request->staff_notes,
            'approved_by' => Auth::user()->id,
            'approved_at' => Carbon::now(),
        ]);

        // Notify user
        Notifications::create('EVENT_SUBMISSION_REJECTED', $submission->user, [
            'submission_title' => $submission->title ?? 'Untitled',
            'event_name' => $submission->event->name ?? $submission->event->title,
            'event_slug' => $submission->event->slug,
            'staff_notes' => $request->staff_notes ? 'Staff notes: ' . $request->staff_notes : '',
        ]);

        flash('Submission rejected.')->success();
        return redirect()->to('admin/event-submissions');
    }

    /**
     * Delete a submission.
     */
    public function postDelete(Request $request, $id)
    {
        $submission = EventSubmission::with(['user', 'event'])->findOrFail($id);
        $user = $submission->user;
        $event = $submission->event;
        
        // Notify user before deletion (don't reveal which staff member)
        if($user) {
            Notifications::create('EVENT_SUBMISSION_DELETED', $user, [
                'submission_title' => $submission->title ?? 'Untitled',
                'event_name' => $event ? ($event->title ?? $event->name) : 'Unknown Event',
                'event_slug' => $event ? $event->slug : '',
                'delete_reason' => $request->delete_reason ? 'Reason: ' . $request->delete_reason : '',
            ]);
        }
        
        // Delete the file if exists
        if($submission->image_name) {
            $path = storage_path('app/public/event_submissions/' . $submission->image_name);
            if(file_exists($path)) {
                unlink($path);
            }
        }
        
        $submission->delete();

        flash('Submission deleted and user notified.')->success();
        return redirect()->to('admin/event-submissions');
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

    private function rollLootWithItemBoost(LootTable $lootTable, $targetItemId, $quantity = 1, $boostMultiplier = 1.25, $userId = null, $eventId = null)
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
}
