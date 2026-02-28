<?php

namespace App\Http\Controllers\WorldExpansion;

use Settings;
use App\Http\Controllers\Controller;
use App\Models\SitePage;
use App\Models\EventSubmission;
use App\Models\ExpeditionSubmission;
use App\Models\WorldExpansion\Glossary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WorldExpansionController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | World Expansion Controller
    |--------------------------------------------------------------------------
    |
    | Displays information about the world, as entered in the admin panel.
    | Pages displayed by this controller form the site's encyclopedia.
    |
    */

    /**
     * Shows the gallery index page with approved submissions.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getGallery(Request $request)
    {
        $type = $request->get('type'); // 'event' or 'expedition'
        $submissionType = $request->get('submission_type'); // 'art' or 'writing'
        $sort = $request->get('sort', 'newest');

        $submissions = collect();

        // Fetch event submissions
        if (!$type || $type == 'event') {
            $eventSubmissions = EventSubmission::with(['user', 'event'])
                ->where('status', 'approved')
                ->when($submissionType, function($query) use ($submissionType) {
                    return $query->where('submission_type', $submissionType);
                })
                ->get()
                ->map(function($submission) {
                    $submission->type = 'event';
                    return $submission;
                });
            $submissions = $submissions->merge($eventSubmissions);
        }

        // Fetch expedition submissions
        if (!$type || $type == 'expedition') {
            $expeditionSubmissions = ExpeditionSubmission::with(['user', 'planet'])
                ->where('status', 'approved')
                ->when($submissionType, function($query) use ($submissionType) {
                    return $query->where('submission_type', $submissionType);
                })
                ->get()
                ->map(function($submission) {
                    $submission->type = 'expedition';
                    return $submission;
                });
            $submissions = $submissions->merge($expeditionSubmissions);
        }

        // Sort submissions
        if ($sort == 'oldest') {
            $submissions = $submissions->sortBy('created_at');
        } else {
            $submissions = $submissions->sortByDesc('created_at');
        }

        // Paginate manually
        $page = $request->get('page', 1);
        $perPage = 12;
        $submissions = new \Illuminate\Pagination\LengthAwarePaginator(
            $submissions->forPage($page, $perPage),
            $submissions->count(),
            $perPage,
            $page,
            ['path' => $request->url()]
        );

        return view('worldexpansion.gallery', [
            'submissions' => $submissions
        ]);
    }

    /**
     * Shows an individual submission.
     *
     * @param  string  $type
     * @param  int     $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getSubmission($type, $id)
    {
        if ($type == 'event') {
            $submission = EventSubmission::with(['user', 'event'])->where('id', $id)->where('status', 'approved')->first();
        } elseif ($type == 'expedition') {
            $submission = ExpeditionSubmission::with(['user', 'planet'])->where('id', $id)->where('status', 'approved')->first();
        } else {
            abort(404);
        }

        if (!$submission) {
            abort(404);
        }

        return view('worldexpansion.submission', [
            'submission' => $submission,
            'type' => $type
        ]);
    }
    
    /**
     * Shows the index page.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getIndex()
    {
        $world = SitePage::where('key','world')->first();
        if(!$world) abort(404);

        // Get the 4 world info sections
        $sections = [];
        for($i = 1; $i <= 4; $i++) {
            $title = \DB::table('site_settings')->where('key', 'world_info_'.$i.'_title')->value('value');
            $description = \DB::table('site_settings')->where('key', 'world_info_'.$i.'_description')->value('value');
            $image = \DB::table('site_settings')->where('key', 'world_info_'.$i.'_image')->value('value');
            
            // Only add section if it has content
            if(!empty($title) || !empty($description)) {
                $sections[$i] = [
                    'title' => $title,
                    'description' => $description,
                    'image' => $image,
                ];
            }
        }

        return view('worldexpansion.world', [
            'world' => $world,
            'sections' => $sections
        ]);
    }
    
    /**
     * Shows the glossary page.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getGlossary(Request $request)
    {
        $showGlossary = Settings::get('WE_glossary');
        if(!$showGlossary) abort(404);
        
        $query = Glossary::query();
        $name = $request->get('name');
        $sort = $request->get('sort');
        if($name) $query->where('name', 'LIKE', '%'.$name.'%');
        
        if(isset($sort))
        {
            switch($sort) {
                case 'alpha':
                    $query->sortAlphabetical();
                    break;
                case 'alpha-reverse':
                    $query->sortAlphabetical(true);
                    break;
            }
        }
        else $query->sortAlphabetical();
        if(!Auth::check() || !(Auth::check() && Auth::user()->isStaff)) $query->visible();
        
        return view('worldexpansion.glossary', [
            'terms' => $query->paginate(30)->appends($request->query()),
        ]);
    }
}
