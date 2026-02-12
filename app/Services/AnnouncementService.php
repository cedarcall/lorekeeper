<?php namespace App\Services;

use App\Services\Service;

use DB;
use Config;

use App\Models\User\User;
use App\Models\Announcement;

class AnnouncementService extends Service
{
    /*
    |--------------------------------------------------------------------------
    | Announcement Service
    |--------------------------------------------------------------------------
    |
    | Handles the creation and editing of announcements.
    |
    */

    /**
     * Creates an announcement.
     *
     * @param  array                  $data
     * @param  \App\Models\User\User  $user
     * @return bool|\App\Models\Announcement
     */
    public function createAnnouncement($data, $user)
    {
        DB::beginTransaction();

        try {
            $data['user_id'] = $user->id;

            $announcement = Announcement::create($data);

            $this->alertUsers();

            return $this->commitReturn($announcement);
        } catch(\Exception $e) { 
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Updates an announcement.
     *
     * @param  \App\Models\Announcement  $announcement
     * @param  array                     $data 
     * @param  \App\Models\User\User     $user
     * @return bool|\App\Models\Announcement
     */
    public function updateAnnouncement($announcement, $data, $user)
    {
        DB::beginTransaction();

        try {
            $data['user_id'] = $user->id;

            $announcement->update($data);

            return $this->commitReturn($announcement);
        } catch(\Exception $e) { 
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Deletes an announcement.
     *
     * @param  \App\Models\Announcement  $announcement
     * @return bool
     */
    public function deleteAnnouncement($announcement)
    {
        DB::beginTransaction();

        try {
            $announcement->delete();

            return $this->commitReturn(true);
        } catch(\Exception $e) { 
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Updates the unread announcement flag for all users so that
     * the new announcement notification is displayed.
     *
     * @return bool
     */
    private function alertUsers()
    {
        User::query()->update(['is_announcement_unread' => 1]);
        return true;
    }
}
