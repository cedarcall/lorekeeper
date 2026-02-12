<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\WorldExpansion\Event as WorldEvent;

class MonthlyEventController extends Controller
{
    // Show current event (or latest) and a carousel of previous events
    public function index()
    {
        $now = Carbon::now();
        $current = WorldEvent::where('is_active', 1)
            ->whereNotNull('occur_start')
            ->where('occur_start', '<=', $now)
            ->where(function($q) use ($now) {
                $q->whereNull('occur_end')->orWhere('occur_end', '>=', $now);
            })
            ->orderBy('occur_start', 'desc')
            ->first();

        if(!$current) {
            $current = WorldEvent::where('is_active', 1)
                ->orderBy('occur_start', 'desc')
                ->orderBy('id', 'desc')
                ->first();
        }

        $previous = WorldEvent::where('is_active', 1)
            ->when($current, function($q) use ($current){
                return $q->where('id', '!=', $current->id);
            })
            ->orderBy('occur_start', 'desc')
            ->get();

        return view('monthly_event.index', compact('current', 'previous'));
    }

    // Show a single event by slug
    public function show($slug)
    {
        return redirect()->to('monthly-event');
    }

    private function normalizeEventHtml($html, $baseUrl)
    {
        if(!$html) return $html;
        return preg_replace('/https?:\/\/(127\.0\.0\.1|localhost)(:\d+)?/i', $baseUrl, $html);
    }
}
