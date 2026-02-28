<?php

namespace App\Models;

use App\Models\Model;
use App\Traits\Commentable;

class EventSubmission extends Model
{
    use Commentable;
    
    /**
     * Whether the model contains timestamps to be saved and updated.
     *
     * @var bool
     */
    public $timestamps = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'event_id', 'title', 'submission_type', 'description', 
        'image_name', 'image_extension', 'status', 'staff_notes', 'approved_by', 'approved_at',
        'credit_reward', 'reputation_reward', 'resource_boost_item_id', 'resource_boost_target_item_id'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'event_submissions';

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'approved_at' => 'datetime',
    ];

    /**********************************************************************************************

        RELATIONS

    **********************************************************************************************/

    /**
     * Get the user who made the submission.
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User\User', 'user_id');
    }

    /**
     * Get the event for the submission.
     */
    public function event()
    {
        return $this->belongsTo('App\Models\Event', 'event_id');
    }

    /**
     * Get the staff member who approved this.
     */
    public function staff()
    {
        return $this->belongsTo('App\Models\User\User', 'approved_by');
    }

    /**********************************************************************************************

        SCOPES

    **********************************************************************************************/

    /**
     * Scope to get pending submissions.
     */
    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }

    /**
     * Scope to get approved submissions.
     */
    public function scopeApproved($query)
    {
        return $query->where('status', 'approved');
    }

    /**
     * Scope to get rejected submissions.
     */
    public function scopeRejected($query)
    {
        return $query->where('status', 'rejected');
    }

    /**********************************************************************************************

        ACCESSORS

    **********************************************************************************************/

    /**
     * Get the URL for the submitted image/file.
     */
    public function getImageUrlAttribute()
    {
        if (!$this->image_name) {
            return null;
        }
        
        $path = storage_path('app/public/event_submissions/' . $this->image_name);
        if (!file_exists($path)) {
            return null;
        }
        
        return asset('storage/event_submissions/' . $this->image_name);
    }

    /**
     * Check if the submission is pending.
     *
     * @return bool
     */
    public function getIsPendingAttribute()
    {
        return $this->status === 'pending';
    }

    /**
     * Check if the submission is approved.
     *
     * @return bool
     */
    public function getIsApprovedAttribute()
    {
        return $this->status === 'approved';
    }
}
