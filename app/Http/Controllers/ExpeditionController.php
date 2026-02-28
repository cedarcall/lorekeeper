<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Planet;
use App\Models\Galaxy;
use App\Models\UserPlanetExpedition;
use App\Models\ExpeditionSubmission;
use App\Models\FeaturedPlanet;
use App\Models\Item\Item;
use App\Models\User\UserItem;
use App\Services\ExpeditionService;
use Auth;

class ExpeditionController extends Controller
{
    /**
     * Show all planets with current status.
     */
    public function index()
    {
        $currentGalaxy = Galaxy::where('is_current', true)->first();
        
        if (!$currentGalaxy) {
            return view('expeditions.index', [
                'planets' => collect(),
                'userExpeditions' => [],
                'message' => 'No galaxy is currently active.'
            ]);
        }
        
        $planets = $currentGalaxy->planets()->where('is_active', true)->paginate(12);
        $featuredPlanet = FeaturedPlanet::with('planet')
            ->where('is_active', 1)
            ->orderBy('updated_at', 'desc')
            ->first();
        
        // Get user's exploration progress if logged in
        $userExpeditions = [];
        if (Auth::check()) {
            foreach ($planets as $planet) {
                $expedition = UserPlanetExpedition::where('user_id', Auth::id())
                    ->where('planet_id', $planet->id)
                    ->first();
                
                if ($expedition) {
                    $userExpeditions[$planet->id] = $expedition;
                }
            }
        }
        
        return view('expeditions.index', compact('currentGalaxy', 'planets', 'userExpeditions', 'featuredPlanet'));
    }
    
    /**
     * Show detailed planet information.
     */
    public function show($id, ExpeditionService $service)
    {
        $planet = Planet::findOrFail($id);
        
        $currentGalaxy = Galaxy::where('is_current', true)->first();
        
        // Check access
        $canAccess = false;
        $userExpedition = null;
        
        if (Auth::check()) {
            // User can access if galaxy is current OR they are the discoverer
            if ($planet->galaxy->is_current || $planet->isDiscoveredByUser(Auth::id())) {
                $canAccess = true;
            }
            
            $userExpedition = UserPlanetExpedition::where('user_id', Auth::id())
                ->where('planet_id', $planet->id)
                ->first();
        } elseif ($planet->galaxy->is_current) {
            $canAccess = true;
        }
        
        if (!$canAccess) {
            flash('You cannot access this planet in the current rotation.')->error();
            return redirect('expeditions');
        }
        
        // Get progressively unlocked info
        $planetInfo = [];
        if ($userExpedition) {
            $planetInfo = $service->getPlanetInfo($planet, Auth::id());
        }
        
        // Check if user has a pending submission
        $hasSubmission = Auth::check() && ExpeditionSubmission::where('user_id', Auth::id())
            ->where('planet_id', $planet->id)
            ->where('status', 'pending')
            ->exists();
        
        $featuredPlanet = FeaturedPlanet::with('lootTable.loot.reward')->where('is_active', 1)
            ->where('planet_id', $planet->id)
            ->first();

        $surveyBeaconItem = Item::where('name', 'Survey Beacon')->first();
        $submissionBoostItems = [];
        $resourceBoostTargets = [];
        if($featuredPlanet && $featuredPlanet->lootTable) {
            $resourceBoostTargets = $featuredPlanet->lootTable->loot
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

        if(Auth::check() && $surveyBeaconItem && count($resourceBoostTargets)) {
            $hasSurveyBeacon = UserItem::where('user_id', Auth::id())
                ->where('item_id', $surveyBeaconItem->id)
                ->where('count', '>', 0)
                ->exists();
            if($hasSurveyBeacon) {
                $submissionBoostItems[$surveyBeaconItem->id] = $surveyBeaconItem->name;
            }
        }

        return view('expeditions.show', compact('planet', 'userExpedition', 'planetInfo', 'canAccess', 'hasSubmission', 'featuredPlanet', 'submissionBoostItems', 'resourceBoostTargets'));
    }
    
    /**
     * Submit an expedition for a planet.
     */
    public function postSubmit(Request $request, ExpeditionService $service, $planetId)
    {
        if (!Auth::check()) {
            flash('You must be logged in to submit an expedition.')->error();
            return redirect()->back();
        }
        
        // Strict file validation
        $request->validate([
            'title' => 'nullable|string|max:100',
            'submission_type' => 'required|in:art,writing',
            'description' => 'nullable|string',
            'image' => 'required|file|mimes:jpg,jpeg,png,gif,pdf|max:5120',
            'resource_boost_item_id' => 'nullable|integer|exists:items,id',
            'resource_boost_target_item_id' => 'nullable|integer|exists:items,id|required_with:resource_boost_item_id',
        ]);
        
        $planet = Planet::findOrFail($planetId);
        
        $data = [
            'title' => $request->title,
            'submission_type' => $request->submission_type,
            'description' => $request->description,
            'resource_boost_item_id' => $request->input('resource_boost_item_id'),
            'resource_boost_target_item_id' => $request->input('resource_boost_target_item_id'),
        ];
        
        // Handle file upload with security measures
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
            
            // Verify extension is allowed and MIME type matches
            if (!isset($allowedMimes[$ext]) || !in_array($mime, $allowedMimes[$ext])) {
                flash('Invalid file type. File must be a valid image (JPG, PNG, GIF) or PDF.')->error();
                return redirect()->back();
            }
            
            $data['image_extension'] = $ext;
            
            // Create expeditions folder if it doesn't exist
            if (!file_exists(storage_path('app/public/expeditions'))) {
                mkdir(storage_path('app/public/expeditions'), 0755, true);
            }
            
            // Generate secure filename - remove original name entirely
            $filename = 'expedition_' . time() . '_' . bin2hex(random_bytes(16)) . '.' . $ext;
            
            // Store the file
            $file->move(storage_path('app/public/expeditions'), $filename);
            $data['image_name'] = $filename;
        }
        
        if ($service->submitExpedition($planet, Auth::user(), $data)) {
            flash('Expedition submitted successfully! Awaiting admin approval.')->success();
            if($request->filled('resource_boost_item_id')) {
                $usedItem = Item::find((int) $request->input('resource_boost_item_id'));
                if($usedItem) {
                    flash('1 Use consumed for '.$usedItem->name)->success();
                }
            }
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) {
                flash($error)->error();
            }
        }
        
        return redirect()->back();
    }

    /**
     * Delete a user's own pending expedition submission.
     */
    public function postDeleteSubmission($id)
    {
        if (!Auth::check()) {
            flash('You must be logged in.')->error();
            return redirect()->back();
        }

        $submission = ExpeditionSubmission::findOrFail($id);

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
            $filePath = storage_path('app/public/expeditions/' . $submission->image_name);
            if (file_exists($filePath)) {
                unlink($filePath);
            }
        }

        // Delete the submission
        $submission->delete();

        flash('Your expedition submission has been deleted.')->success();
        return redirect()->back();
    }

    /**
     * Handle naming a planet after expedition completion.
     */
    public function postName(Request $request, $planetId)
    {
        if (!Auth::check()) {
            flash('You must be logged in to name a planet.')->error();
            return redirect()->back();
        }

        $planet = Planet::findOrFail($planetId);
        $userExpedition = UserPlanetExpedition::where('user_id', Auth::id())
            ->where('planet_id', $planet->id)
            ->first();

        if (!$userExpedition || !$userExpedition->is_discoverer || $userExpedition->visit_count < $planet->unlock_threshold) {
            flash('You are not eligible to name this planet.')->error();
            return redirect()->back();
        }

        $request->validate([
            'planet_name' => 'required|string|max:100',
        ]);

        $planet->name = $request->planet_name;
        $planet->save();

        flash('Planet named successfully!')->success();
        return redirect()->back();
    }
}
