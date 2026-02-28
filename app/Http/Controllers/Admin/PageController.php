<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use Auth;

use App\Models\SitePage;
use App\Models\HomeworldImage;
use App\Services\PageService;

use App\Http\Controllers\Controller;

class PageController extends Controller
{
    /**
     * Shows the page index.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getIndex()
    {
        return view('admin.pages.pages', [
            'pages' => SitePage::orderBy('title')->paginate(20)
        ]);
    }
    
    /**
     * Shows the create page page. 
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getCreatePage()
    {
        return view('admin.pages.create_edit_page', [
            'page' => new SitePage,
            'homeworldImages' => collect()
        ]);
    }
    
    /**
     * Shows the edit page page.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getEditPage($id)
    {
        $page = SitePage::find($id);
        if(!$page) abort(404);

        $homeworldImages = collect();
        if($page->key === 'homeworld') {
            $homeworldImages = HomeworldImage::orderBy('sort_order')->get();
        }

        return view('admin.pages.create_edit_page', [
            'page' => $page,
            'homeworldImages' => $homeworldImages
        ]);
    }

    /**
     * Creates or edits a page.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\PageService  $service
     * @param  int|null                  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postCreateEditPage(Request $request, PageService $service, $id = null)
    {
        $existingPage = $id ? SitePage::find($id) : null;
        $submittedKey = strtolower((string)$request->input('key', ''));
        $isHomeworld = $submittedKey === 'homeworld' || ($existingPage && $existingPage->key === 'homeworld');

        $id ? $request->validate(SitePage::$updateRules) : $request->validate(SitePage::$createRules);

        if($isHomeworld) {
            $request->validate([
                'homeworld_images' => 'nullable|array|max:5',
                'homeworld_images.*' => 'nullable|image|mimes:jpeg,png,gif,webp|max:10240',
                'remove_homeworld_images' => 'nullable|array',
                'remove_homeworld_images.*' => 'integer|exists:homeworld_images,id',
            ]);

            $removeIds = collect($request->input('remove_homeworld_images', []))
                ->map(function($value) {
                    return (int)$value;
                })
                ->unique()
                ->values();

            $newImages = array_values(array_filter((array)$request->file('homeworld_images', [])));
            $existingCount = HomeworldImage::count();
            $removalCount = $removeIds->isNotEmpty() ? HomeworldImage::whereIn('id', $removeIds->all())->count() : 0;
            $finalCount = $existingCount - $removalCount + count($newImages);

            if($finalCount < 1 || $finalCount > 5) {
                return redirect()->back()
                    ->withInput()
                    ->withErrors(['homeworld_images' => 'Homeworld must have between 1 and 5 images.']);
            }
        }

        $data = $request->only([
            'key', 'title', 'description', 'text', 'is_visible', 'can_comment'
        ]);

        if($id && $service->updatePage($existingPage, $data, Auth::user())) {
            if($isHomeworld) {
                $this->syncHomeworldImages($request);
            }
            flash('Page updated successfully.')->success();
        }
        else if (!$id && $page = $service->createPage($data, Auth::user())) {
            if($isHomeworld) {
                $this->syncHomeworldImages($request);
            }
            flash('Page created successfully.')->success();
            return redirect()->to('admin/pages/edit/'.$page->id);
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Applies add/remove operations for homeworld images submitted via page editor.
     *
     * @param \Illuminate\Http\Request  $request
     * @return void
     */
    protected function syncHomeworldImages(Request $request)
    {
        $removeIds = collect($request->input('remove_homeworld_images', []))
            ->map(function($value) {
                return (int)$value;
            })
            ->unique()
            ->values();

        if($removeIds->isNotEmpty()) {
            $imagesToRemove = HomeworldImage::whereIn('id', $removeIds->all())->get();
            foreach($imagesToRemove as $image) {
                $imagePath = storage_path('app/public/homeworld/'.$image->image_name);
                if(file_exists($imagePath)) {
                    unlink($imagePath);
                }
                $image->delete();
            }
        }

        $newImages = array_values(array_filter((array)$request->file('homeworld_images', [])));
        if(!count($newImages)) return;

        $nextSortOrder = ((int) HomeworldImage::max('sort_order')) + 1;
        foreach($newImages as $file) {
            $filename = time().'_'.uniqid().'.'.$file->getClientOriginalExtension();
            $file->storeAs('homeworld', $filename, 'public');

            HomeworldImage::create([
                'image_name' => $filename,
                'image_extension' => $file->getClientOriginalExtension(),
                'alt_text' => null,
                'caption' => null,
                'sort_order' => $nextSortOrder,
            ]);

            $nextSortOrder++;
        }
    }
    
    /**
     * Gets the page deletion modal.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getDeletePage($id)
    {
        $page = SitePage::find($id);
        return view('admin.pages._delete_page', [
            'page' => $page,
        ]);
    }

    /**
     * Deletes a page.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\PageService  $service
     * @param  int                       $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postDeletePage(Request $request, PageService $service, $id)
    {
        if($id && $service->deletePage(SitePage::find($id))) {
            flash('Page deleted successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->to('admin/pages');
    }

    /**
     * Shows the world info management page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getWorldInfo()
    {
        $sections = [];
        for($i = 1; $i <= 4; $i++) {
            $sections[$i] = [
                'title' => \DB::table('site_settings')->where('key', 'world_info_'.$i.'_title')->value('value'),
                'description' => \DB::table('site_settings')->where('key', 'world_info_'.$i.'_description')->value('value'),
                'image' => \DB::table('site_settings')->where('key', 'world_info_'.$i.'_image')->value('value'),
            ];
        }

        return view('admin.pages.world_info', [
            'sections' => $sections
        ]);
    }

    /**
     * Saves the world info settings.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postWorldInfo(Request $request)
    {
        for($i = 1; $i <= 4; $i++) {
            \DB::table('site_settings')->where('key', 'world_info_'.$i.'_title')->update(['value' => $request->input('title_'.$i) ?? '']);
            \DB::table('site_settings')->where('key', 'world_info_'.$i.'_description')->update(['value' => $request->input('description_'.$i) ?? '']);
            
            // Handle image upload
            if($request->hasFile('image_'.$i)) {
                $image = $request->file('image_'.$i);
                $filename = 'world_info_'.$i.'_'.time().'.'.$image->getClientOriginalExtension();
                $image->move(public_path('images/data'), $filename);
                \DB::table('site_settings')->where('key', 'world_info_'.$i.'_image')->update(['value' => 'images/data/'.$filename]);
            }
            
            // Handle image removal
            if($request->input('remove_image_'.$i)) {
                $oldImage = \DB::table('site_settings')->where('key', 'world_info_'.$i.'_image')->value('value');
                if($oldImage && file_exists(public_path($oldImage))) {
                    unlink(public_path($oldImage));
                }
                \DB::table('site_settings')->where('key', 'world_info_'.$i.'_image')->update(['value' => '']);
            }
        }

        flash('World info updated successfully.')->success();
        return redirect()->back();
    }
}
