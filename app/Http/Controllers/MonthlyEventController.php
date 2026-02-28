<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Auth;
use DB;
use App\Models\Event;
use App\Models\EventQuestion;
use App\Models\EventSubmission;
use App\Models\Item\Item;
use App\Models\User\UserItem;
use App\Models\User\User;
use App\Models\User\UserAward;
use App\Facades\Notifications;
use App\Services\InventoryManager;
use Illuminate\Support\Facades\Storage;

class MonthlyEventController extends Controller
{
    // Show current event (or latest) and a carousel of previous events
    public function index()
    {
        Event::archiveExpiredVisibleEvents();
        $now = Carbon::now();
        
        // Get current/active event
        $current = Event::where('is_visible', 1)
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
            ->with('lootTable', 'award')
            ->orderBy('start_at', 'desc')
            ->first();

        if(!$current) {
            $current = Event::where('is_visible', 1)
                ->with('lootTable', 'award')
                ->orderBy('start_at', 'desc')
                ->orderBy('id', 'desc')
                ->first();
        }

        $previous = Event::where('is_visible', 1)
            ->when($current, function($q) use ($current){
                return $q->where('id', '!=', $current->id);
            })
            ->orderBy('start_at', 'desc')
            ->get();

        // Get user's questions and submissions for this event
        $userQuestions = null;
        $userSubmissions = null;
        $hasBadge = false;
        $submissionBoostItems = [];
        $resourceBoostTargets = [];
        $surveyBeaconItem = Item::where('name', 'Survey Beacon')->first();
        if($current && $current->lootTable) {
            $resourceBoostTargets = $current->lootTable->loot
                ->where('rewardable_type', 'Item')
                ->map(function($loot) {
                    return $loot->reward;
                })
                ->filter()
                ->unique('id')
                ->sortBy('name')
                ->pluck('name', 'id')
                ->toArray();
        }
        if(Auth::check() && $current) {
            $userQuestions = EventQuestion::where('user_id', Auth::user()->id)
                ->where('event_id', $current->id)
                ->orderBy('created_at', 'desc')
                ->get();
            
            $userSubmissions = EventSubmission::where('user_id', Auth::user()->id)
                ->where('event_id', $current->id)
                ->orderBy('created_at', 'desc')
                ->get();

            // Check if user has badge
            if($current->award_id) {
                $hasBadge = DB::table('user_event_badges')
                    ->where('user_id', Auth::user()->id)
                    ->where('event_id', $current->id)
                    ->exists();
            }

            if($surveyBeaconItem && count($resourceBoostTargets)) {
                $hasSurveyBeacon = UserItem::where('user_id', Auth::id())
                    ->where('item_id', $surveyBeaconItem->id)
                    ->where('count', '>', 0)
                    ->exists();
                if($hasSurveyBeacon) {
                    $submissionBoostItems[$surveyBeaconItem->id] = $surveyBeaconItem->name;
                }
            }
        }

        return view('monthly_event.show', compact('current', 'previous', 'userQuestions', 'userSubmissions', 'hasBadge', 'submissionBoostItems', 'resourceBoostTargets'));
    }

    // Show a single event by slug
    public function show($slug)
    {
        Event::archiveExpiredVisibleEvents();
        $event = Event::where('slug', $slug)
            ->with('lootTable', 'award')
            ->first();
            
        if(!$event) abort(404);
        
        $previous = Event::where('is_visible', 1)
            ->where('id', '!=', $event->id)
            ->orderBy('start_at', 'desc')
            ->get();

        // Get user's questions and submissions for this event
        $userQuestions = null;
        $userSubmissions = null;
        $hasBadge = false;
        $submissionBoostItems = [];
        $resourceBoostTargets = [];
        $surveyBeaconItem = Item::where('name', 'Survey Beacon')->first();
        if($event && $event->lootTable) {
            $resourceBoostTargets = $event->lootTable->loot
                ->where('rewardable_type', 'Item')
                ->map(function($loot) {
                    return $loot->reward;
                })
                ->filter()
                ->unique('id')
                ->sortBy('name')
                ->pluck('name', 'id')
                ->toArray();
        }
        if(Auth::check()) {
            $userQuestions = EventQuestion::where('user_id', Auth::user()->id)
                ->where('event_id', $event->id)
                ->orderBy('created_at', 'desc')
                ->get();
            
            $userSubmissions = EventSubmission::where('user_id', Auth::user()->id)
                ->where('event_id', $event->id)
                ->orderBy('created_at', 'desc')
                ->get();

            // Check if user has badge
            if($event->award_id) {
                $hasBadge = DB::table('user_event_badges')
                    ->where('user_id', Auth::user()->id)
                    ->where('event_id', $event->id)
                    ->exists();
            }

            if($surveyBeaconItem && count($resourceBoostTargets)) {
                $hasSurveyBeacon = UserItem::where('user_id', Auth::id())
                    ->where('item_id', $surveyBeaconItem->id)
                    ->where('count', '>', 0)
                    ->exists();
                if($hasSurveyBeacon) {
                    $submissionBoostItems[$surveyBeaconItem->id] = $surveyBeaconItem->name;
                }
            }
        }
        
        return view('monthly_event.show', ['current' => $event, 'previous' => $previous, 'userQuestions' => $userQuestions, 'userSubmissions' => $userSubmissions, 'hasBadge' => $hasBadge, 'submissionBoostItems' => $submissionBoostItems, 'resourceBoostTargets' => $resourceBoostTargets]);
    }

    /**
     * Show a gallery of previous monthly events (inactive/archived).
     */
    public function history()
    {
        Event::archiveExpiredVisibleEvents();
        $events = Event::where('is_visible', 0)
            ->with('lootTable', 'award')
            ->orderBy('start_at', 'desc')
            ->orderBy('id', 'desc')
            ->paginate(12);

        return view('monthly_event.history', [
            'events' => $events,
        ]);
    }

    /**
     * Submit an entry for the event.
     */
    public function postSubmit(Request $request, $slug)
    {
        if (!Auth::check()) {
            flash('You must be logged in to submit an entry.')->error();
            return redirect()->back();
        }

        $request->validate([
            'title' => 'nullable|string|max:100',
            'submission_type' => 'required|in:art,writing',
            'description' => 'nullable|string',
            'image' => 'required|file|mimes:jpg,jpeg,png,gif,pdf|max:5120',
            'resource_boost_item_id' => 'nullable|integer|exists:items,id',
            'resource_boost_target_item_id' => 'nullable|integer|exists:items,id|required_with:resource_boost_item_id',
        ]);

        $event = Event::where('slug', $slug)
            ->where('is_visible', 1)
            ->first();
            
        if(!$event) {
            flash('Event not found.')->error();
            return redirect()->back();
        }

        $resourceBoostItemId = (int) $request->input('resource_boost_item_id');
        $resourceBoostTargetItemId = (int) $request->input('resource_boost_target_item_id');
        $usedSubmissionItemName = null;
        if($resourceBoostItemId) {
            $boostItem = Item::find($resourceBoostItemId);
            if(!$boostItem || strtolower($boostItem->name) !== 'survey beacon') {
                flash('Invalid event boost item selected.')->error();
                return redirect()->back();
            }

            if(!$resourceBoostTargetItemId) {
                flash('Please choose a resource target for Survey Beacon.')->error();
                return redirect()->back();
            }

            if(!$event->lootTable) {
                flash('Survey Beacon cannot be used for this event.')->error();
                return redirect()->back();
            }

            $rollableItemIds = $event->lootTable->loot->where('rewardable_type', 'Item')->pluck('rewardable_id')->unique()->toArray();
            if(!in_array($resourceBoostTargetItemId, $rollableItemIds)) {
                flash('Selected resource is not available in this event.')->error();
                return redirect()->back();
            }

            $userItemStack = UserItem::where('user_id', Auth::id())
                ->where('item_id', $boostItem->id)
                ->where('count', '>', 0)
                ->first();
            if(!$userItemStack) {
                flash('You do not have a Survey Beacon to use.')->error();
                return redirect()->back();
            }

            if(!(new InventoryManager)->debitStack(Auth::user(), 'Event Submission Item Use', ['data' => 'Used Survey Beacon for '.($event->title ?? $event->name)], $userItemStack, 1)) {
                flash('Failed to use Survey Beacon.')->error();
                return redirect()->back();
            }

            $usedSubmissionItemName = $boostItem->name;
        }

        // Handle file upload
        $imageName = null;
        $imageExtension = null;
        
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            
            // Validate MIME type matches extension
            $allowedMimes = [
                'jpg' => ['image/jpeg', 'image/jpg'],
                'jpeg' => ['image/jpeg', 'image/jpg'],
                'png' => ['image/png'],
                'gif' => ['image/gif'],
                'pdf' => ['application/pdf']
            ];
            
            $ext = strtolower($file->getClientOriginalExtension());
            $mime = $file->getMimeType();
            
            if (!isset($allowedMimes[$ext]) || !in_array($mime, $allowedMimes[$ext])) {
                flash('Invalid file type.')->error();
                return redirect()->back();
            }
            
            // Generate unique filename
            $imageName = Auth::user()->id . '_' . $event->id . '_' . time() . '.' . $ext;
            $imageExtension = $ext;
            
            // Store file
            $file->storeAs('public/event_submissions', $imageName);
        }

        // Create submission
        $submission = EventSubmission::create([
            'user_id' => Auth::user()->id,
            'event_id' => $event->id,
            'title' => $request->title ?? 'Untitled Submission',
            'submission_type' => $request->submission_type,
            'description' => $request->description,
            'image_name' => $imageName,
            'image_extension' => $imageExtension,
            'status' => 'pending',
            'resource_boost_item_id' => $resourceBoostItemId ?: null,
            'resource_boost_target_item_id' => $resourceBoostTargetItemId ?: null,
        ]);

        // Award badge on first submission if event has a badge
        if($event->award_id && $event->award) {
            $alreadyHasBadge = DB::table('user_event_badges')
                ->where('user_id', Auth::user()->id)
                ->where('event_id', $event->id)
                ->exists();

            if(!$alreadyHasBadge) {
                // Record that user earned the badge
                DB::table('user_event_badges')->insert([
                    'user_id' => Auth::user()->id,
                    'event_id' => $event->id,
                    'award_id' => $event->award_id,
                    'awarded_at' => Carbon::now(),
                ]);

                // Credit the award to user
                $this->creditAwardToUser(Auth::user(), $event->award, 1);

                // Send notification
                Notifications::create('EVENT_BADGE_EARNED', Auth::user(), [
                    'award_name' => $event->award->name,
                    'event_name' => $event->name,
                    'event_slug' => $event->slug,
                ]);

                if($usedSubmissionItemName) {
                    flash('1 Use consumed for '.$usedSubmissionItemName)->success();
                }
                flash('Your submission has been received! You have also earned the <strong>' . $event->award->name . '</strong> badge for participating!')->success();
                return redirect()->back();
            }
        }

        if($usedSubmissionItemName) {
            flash('1 Use consumed for '.$usedSubmissionItemName)->success();
        }
        flash('Your submission has been received and is awaiting review!')->success();
        return redirect()->back();
    }

    /**
     * Submit a question for the event.
     */
    public function postAskQuestion(Request $request, $slug)
    {
        $request->validate([
            'question' => 'required|string|min:10|max:2000',
        ]);

        $event = Event::where('slug', $slug)
            ->where('is_visible', 1)
            ->first();
            
        if(!$event) {
            flash('Event not found.')->error();
            return redirect()->back();
        }

        // Create the question
        $question = EventQuestion::create([
            'user_id' => Auth::user()->id,
            'event_id' => $event->id,
            'question' => $request->question,
            'status' => 'pending',
        ]);

        // Notify all staff members
        $staffMembers = User::whereHas('rank', function($q) {
            $q->where('sort', '>', 0); // Staff ranks have sort > 0
        })->get();

        foreach($staffMembers as $staff) {
            Notifications::create('EVENT_QUESTION_RECEIVED', $staff, [
                'user_url' => Auth::user()->url,
                'user_name' => Auth::user()->name,
                'event_name' => $event->name,
                'question_id' => $question->id,
            ]);
        }

        flash('Your question has been submitted! Staff will review and answer it soon.')->success();
        return redirect()->back();
    }

    /**
     * Delete a user's own pending submission.
     */
    public function postDeleteSubmission($id)
    {
        if (!Auth::check()) {
            flash('You must be logged in.')->error();
            return redirect()->back();
        }

        $submission = EventSubmission::findOrFail($id);

        // Verify user owns this submission
        if ($submission->user_id != Auth::user()->id) {
            flash('You do not have permission to delete this submission.')->error();
            return redirect()->back();
        }

        // Only allow deleting pending submissions
        if ($submission->status != 'pending') {
            flash('You can only delete pending submissions.')->error();
            return redirect()->back();
        }

        // Delete the image file if exists
        if ($submission->image_name) {
            Storage::delete('public/event_submissions/' . $submission->image_name);
        }

        // Delete the submission
        $submission->delete();

        flash('Your submission has been deleted.')->success();
        return redirect()->back();
    }

    /**
     * Credit an award to a user.
     */
    private function creditAwardToUser($user, $award, $quantity = 1)
    {
        $encoded_data = json_encode([]);
        
        $user_stack = UserAward::where([
            ['user_id', '=', $user->id],
            ['award_id', '=', $award->id],
            ['data', '=', $encoded_data]
        ])->first();

        if(!$user_stack) {
            $user_stack = UserAward::create([
                'user_id' => $user->id, 
                'award_id' => $award->id, 
                'data' => $encoded_data
            ]);
        }
        
        $user_stack->count += $quantity;
        $user_stack->save();

        return true;
    }
}
