<?php

namespace App\Http\Controllers;

use Auth;
use DB;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\SitePage;
use App\Models\FeaturedPlanet;
use App\Models\Galaxy;
use App\Models\Planet;
use App\Models\HomeworldImage;

class PageController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Page Controller
    |--------------------------------------------------------------------------
    |
    | Displays site pages, editable from the admin panel.
    |
    */

    /**
     * Shows the page with the given key.
     *
     * @param  string  $key
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getPage($key)
    {
        $page = SitePage::where('key', $key)->where('is_visible', 1)->first();
        if(!$page) abort(404);
        $data = ['page' => $page];
        if ($key === 'featured-planet') {
            $data['featuredPlanet'] = FeaturedPlanet::with('galaxy', 'materials')
                ->where('is_active', 1)
                ->orderBy('updated_at', 'desc')
                ->first();
        }
        if ($key === 'current-galaxy') {
            $allGalaxies = Galaxy::orderBy('is_current', 'desc')->orderBy('name')->get();
            $currentGalaxy = Galaxy::where('is_current', 1)->first();
            
            // Get selected galaxy from query param, default to current galaxy
            $selectedGalaxyId = request()->get('galaxy_id', $currentGalaxy ? $currentGalaxy->id : null);
            $selectedGalaxy = $selectedGalaxyId ? Galaxy::find($selectedGalaxyId) : $currentGalaxy;
            
            $planets = $selectedGalaxy ? Planet::where('galaxy_id', $selectedGalaxy->id)
                ->where('is_active', 1)
                ->orderBy('name')
                ->get() : collect();
            
            $data['currentGalaxy'] = $currentGalaxy;
            $data['selectedGalaxy'] = $selectedGalaxy;
            $data['allGalaxies'] = $allGalaxies;
            $data['planets'] = $planets;
        }
        if ($key === 'homeworld') {
            $data['homeworldImages'] = HomeworldImage::orderBy('sort_order')->get();
            $data['homeworldParsedText'] = $this->sanitizeHomeworldContent($page->parsed_text);
        }
        return view('pages.page', $data);
    }

    /**
     * Removes malformed image metadata fragments from Homeworld content output.
     *
     * @param  string|null  $content
     * @return string|null
     */
    protected function sanitizeHomeworldContent($content)
    {
        if(!$content) {
            return $content;
        }

        $patterns = [
            '/^.*\\/v1\\/(?:fit|fill|crop)\\/.*$/mi',
            '/^.*(?:"ss"\\s*:\\s*\\[|entityid\\s*=|social_preview|fullview|preview).*$/mi',
            '/^\\s*[\\{\\[].*(?:"t"\\s*:\\s*"|"x"\\s*:\\s*\\d+|"c"\\s*:\\s*"\\/\\/v1\\/).*$/mi',
            '/^.*(?:\\.png"|\\.jpg"|\\.jpeg"|\\.gif"|\\.webp").*(?:"h"\\s*:\\s*\\d+|"w"\\s*:\\s*\\d+).*$/mi',
        ];

        foreach($patterns as $pattern) {
            $content = preg_replace($pattern, '', $content);
        }

        $content = preg_replace('/(?:<br\\s*\\/?>(?:\\s|&nbsp;)*){3,}/i', '<br><br>', $content);
        return $content;
    }

    /**
     * Route-compatible page display.
     *
     * @param  string  $key
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function show($key)
    {
        return $this->getPage($key);
    }
    

    /**
     * Shows the credits page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getCreditsPage()
    {
        return view('pages.credits', [
            'credits' => SitePage::where('key', 'credits')->first(),
            'extensions' => DB::table('site_extensions')->get()
        ]);
    }
    
}
