<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use Auth;

use App\Models\Announcement;
use App\Services\AnnouncementService;

use App\Http\Controllers\Controller;

class AnnouncementController extends Controller
{
    /**
     * Shows the announcements index.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getIndex()
    {
        return view('admin.announcements.announcements', [
            'announcements' => Announcement::orderBy('updated_at', 'DESC')->paginate(20)
        ]);
    }
    
    /**
     * Shows the create announcement page. 
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getCreateAnnouncement()
    {
        return view('admin.announcements.create_edit_announcement', [
            'announcement' => new Announcement
        ]);
    }
    
    /**
     * Shows the edit announcement page.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getEditAnnouncement($id)
    {
        $announcement = Announcement::find($id);
        if(!$announcement) abort(404);
        return view('admin.announcements.create_edit_announcement', [
            'announcement' => $announcement
        ]);
    }

    /**
     * Creates or edits an announcement.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\AnnouncementService  $service
     * @param  int|null                  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postCreateEditAnnouncement(Request $request, AnnouncementService $service, $id = null)
    {
        $id ? $request->validate(Announcement::$updateRules) : $request->validate(Announcement::$createRules);
        $data = $request->only([
            'title', 'url'
        ]);
        if($id && $service->updateAnnouncement(Announcement::find($id), $data, Auth::user())) {
            flash('Announcement updated successfully.')->success();
        }
        else if (!$id && $announcement = $service->createAnnouncement($data, Auth::user())) {
            flash('Announcement created successfully.')->success();
            return redirect()->to('admin/announcements/edit/'.$announcement->id);
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }
    
    /**
     * Gets the announcement deletion modal.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getDeleteAnnouncement($id)
    {
        $announcement = Announcement::find($id);
        return view('admin.announcements._delete_announcement', [
            'announcement' => $announcement,
        ]);
    }

    /**
     * Deletes an announcement.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\AnnouncementService  $service
     * @param  int                       $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postDeleteAnnouncement(Request $request, AnnouncementService $service, $id)
    {
        if($id && $service->deleteAnnouncement(Announcement::find($id))) {
            flash('Announcement deleted successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->to('admin/announcements');
    }
}
