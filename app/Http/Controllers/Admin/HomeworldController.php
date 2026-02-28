<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\HomeworldImage;
use Illuminate\Http\Request;

class HomeworldController extends Controller
{
    /**
     * Shows the homeworld images admin page.
     */
    public function getIndex()
    {
        $images = HomeworldImage::orderBy('sort_order')->get();
        return view('admin.pages.homeworld', [
            'images' => $images
        ]);
    }

    /**
     * Store a new homeworld image.
     */
    public function postCreate(Request $request)
    {
        if(HomeworldImage::count() >= 5) {
            return redirect('admin/homeworld')->withErrors(['image' => 'Homeworld can have at most 5 images.']);
        }

        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,gif,webp|max:10240',
            'alt_text' => 'nullable|string|max:255',
            'caption' => 'nullable|string'
        ]);

        $file = $request->file('image');
        $filename = time() . '.' . $file->getClientOriginalExtension();
        $file->storeAs('homeworld', $filename, 'public');

        HomeworldImage::create([
            'image_name' => $filename,
            'image_extension' => $file->getClientOriginalExtension(),
            'alt_text' => $request->input('alt_text'),
            'caption' => $request->input('caption'),
            'sort_order' => HomeworldImage::max('sort_order') + 1
        ]);

        return redirect('admin/homeworld')->with('success', 'Image added to homeworld gallery!');
    }

    /**
     * Update an image.
     */
    public function postEdit(Request $request, $id)
    {
        $image = HomeworldImage::findOrFail($id);
        
        $request->validate([
            'alt_text' => 'nullable|string|max:255',
            'caption' => 'nullable|string'
        ]);

        $image->update([
            'alt_text' => $request->input('alt_text'),
            'caption' => $request->input('caption')
        ]);

        return redirect('admin/homeworld')->with('success', 'Image updated!');
    }

    /**
     * Delete an image.
     */
    public function postDelete(Request $request, $id)
    {
        if(HomeworldImage::count() <= 1) {
            return redirect('admin/homeworld')->withErrors(['image' => 'Homeworld must have at least 1 image.']);
        }

        $image = HomeworldImage::findOrFail($id);
        
        // Delete file from storage
        if (file_exists(storage_path('app/public/homeworld/' . $image->image_name))) {
            unlink(storage_path('app/public/homeworld/' . $image->image_name));
        }

        $image->delete();

        return redirect('admin/homeworld')->with('success', 'Image deleted!');
    }

    /**
     * Reorder images.
     */
    public function postReorder(Request $request)
    {
        $order = $request->input('order', []);
        foreach ($order as $index => $id) {
            HomeworldImage::where('id', $id)->update(['sort_order' => $index]);
        }

        return response()->json(['success' => true]);
    }
}
