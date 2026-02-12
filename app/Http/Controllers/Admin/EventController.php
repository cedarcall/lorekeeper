<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Auth;
use App\Models\Event;
use App\Http\Controllers\Controller;

class EventController extends Controller
{
    public function getIndex()
    {
        $events = Event::orderBy('start_at', 'desc')->paginate(20);
        return view('admin.events.events', ['events' => $events]);
    }

    public function getCreateEvent()
    {
        return view('admin.events.create_edit_event', ['event' => new Event]);
    }

    public function getEditEvent($id)
    {
        $event = Event::find($id);
        if(!$event) abort(404);
        return view('admin.events.create_edit_event', ['event' => $event]);
    }

    public function postCreateEditEvent(Request $request, $id = null)
    {
        $rules = [
            'slug' => 'required|alpha_dash|between:3,100',
            'title' => 'required|between:3,255',
            'start_at' => 'nullable|date_format:Y-m-d H:i:s',
            'end_at' => 'nullable|date_format:Y-m-d H:i:s',
            'content' => 'nullable'
        ];

        $request->validate($rules);

        $data = $request->only(['slug','title','content','qna_content','start_at','end_at','is_visible']);
        $data['is_visible'] = $request->has('is_visible') ? 1 : 0;
        
        // Clean Cloudinary metadata that gets pasted from rich text editors
        if(isset($data['content']) && $data['content']) {
            // Remove excessive embedded JSON and metadata that appears between image tags
            // This pattern looks for the Cloudinary image data blocks
            $data['content'] = preg_replace('/-\d+\.png["\']?,\s*"[htwcfrsxo]":[^}]*}\s*(?:\{"t":[^}]*\})*,/i', '","', $data['content']);
            // Remove the entityId and filetype metadata markers
            $data['content'] = preg_replace('/",\s*"filetype":\s*"[^"]*",\s*"entityId":\s*\d+\s*\}"\s+data-/i', '" data-', $data['content']);
            // Remove massive data-link attributes containing JSON
            $data['content'] = preg_replace('/\s+data-link="https?:\/\/[^"]*"/', '', $data['content']);
            // Clean up extra spacing
            $data['content'] = preg_replace('/>\s+-\d+\.png/', '>', $data['content']);
            $data['parsed_text'] = function_exists('parse') ? parse($data['content']) : $data['content'];
        } else {
            $data['parsed_text'] = '';
        }
        
        // Clean QNA content similarly
        if(isset($data['qna_content']) && $data['qna_content']) {
            // Remove excessive embedded JSON and metadata
            $data['qna_content'] = preg_replace('/-\d+\.png["\']?,\s*"[htwcfrsxo]":[^}]*}\s*(?:\{"t":[^}]*\})*,/i', '","', $data['qna_content']);
            $data['qna_content'] = preg_replace('/",\s*"filetype":\s*"[^"]*",\s*"entityId":\s*\d+\s*\}"\s+data-/i', '" data-', $data['qna_content']);
            $data['qna_content'] = preg_replace('/\s+data-link="https?:\/\/[^"]*"/', '', $data['qna_content']);
            $data['qna_content'] = preg_replace('/>\s+-\d+\.png/', '>', $data['qna_content']);
            $data['qna_parsed_text'] = function_exists('parse') ? parse($data['qna_content']) : $data['qna_content'];
        } else {
            $data['qna_parsed_text'] = '';
        }

        // handle header image
        if($request->hasFile('header_image')) {
            $file = $request->file('header_image');
            $filename = time().'_'.preg_replace('/[^a-z0-9\.\-]/i', '_', $file->getClientOriginalName());
            $destination = public_path('images/events');
            if(!file_exists($destination)) mkdir($destination, 0755, true);
            $file->move($destination, $filename);
            $data['header_image'] = 'images/events/'.$filename;
        }

        if($id) {
            $event = Event::find($id);
            if(!$event) abort(404);
            // unique slug check
            if(Event::where('slug', $data['slug'])->where('id','!=',$event->id)->exists()) {
                return redirect()->back()->withErrors(['slug'=>'The slug has already been taken.'])->withInput();
            }
            $event->update($data);
            
            // Refresh the event to confirm the update
            $event->refresh();
            
            // Clear any application caches
            \Illuminate\Support\Facades\Cache::forget('event_'.$event->id);
            \Illuminate\Support\Facades\Cache::forget('event_'.$event->slug);
            \Illuminate\Support\Facades\Cache::flush(); // Clear entire cache as backup
            flash('Event updated successfully.')->success();
            return redirect()->to('admin/events/edit/'.$event->id)->with('cache_bust', time());
        }

        // create
        if(Event::where('slug', $data['slug'])->exists()) {
            return redirect()->back()->withErrors(['slug'=>'The slug has already been taken.'])->withInput();
        }
        $event = Event::create($data + ['name' => $data['title']]);
        flash('Event created successfully.')->success();
        return redirect()->to('admin/events/edit/'.$event->id);
    }

    public function getDeleteEvent($id)
    {
        $event = Event::find($id);
        return view('admin.events._delete_event', ['event' => $event]);
    }

    public function postDeleteEvent(Request $request, $id)
    {
        $event = Event::find($id);
        if($event) {
            $event->delete();
            flash('Event deleted.')->success();
        }
        return redirect()->to('admin/events');
    }

    public function postUploadImage(Request $request)
    {
        try {
            if($request->hasFile('file')) {
                $file = $request->file('file');
                
                // Validate the file
                if (!$file->isValid()) {
                    return response()->json(['error' => 'Invalid file upload'], 400);
                }
                
                $filename = time() . '_' . preg_replace('/[^a-z0-9\.\-]/i', '_', $file->getClientOriginalName());
                $destination = public_path('images/events');
                
                if(!file_exists($destination)) {
                    mkdir($destination, 0755, true);
                }
                
                $file->move($destination, $filename);
                $fullPath = 'images/events/'.$filename;
                
                // Verify file was actually moved
                if(!file_exists(public_path($fullPath))) {
                    return response()->json(['error' => 'File upload failed - could not save file'], 400);
                }
                
                return response()->json(['location' => '/'.ltrim($fullPath, '/')]);
            }
            return response()->json(['error' => 'No file uploaded'], 400);
        } catch(\Exception $e) {
            return response()->json(['error' => 'Upload error: ' . $e->getMessage()], 500);
        }
    }
}
