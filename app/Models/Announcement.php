<?php

namespace App\Models;

use Config;
use App\Models\Model;

class Announcement extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'title', 'url'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'announcements';

    /**
     * Whether the model contains timestamps to be saved and updated.
     *
     * @var string
     */
    public $timestamps = true;

    /**
     * Validation rules for creation.
     *
     * @var array
     */
    public static $createRules = [
        'title' => 'required|between:3,100',
        'url' => 'nullable|url',
    ];
    
    /**
     * Validation rules for updating.
     *
     * @var array
     */
    public static $updateRules = [
        'title' => 'required|between:3,100',
        'url' => 'nullable|url',
    ];

    /**********************************************************************************************
    
        RELATIONS

    **********************************************************************************************/
    
    /**
     * Get the user who created the announcement.
     */
    public function user() 
    {
        return $this->belongsTo('App\Models\User\User');
    }

    /**
     * Get the users who have dismissed this announcement.
     */
    public function dismissedByUsers()
    {
        return $this->belongsToMany('App\Models\User\User', 'announcement_user', 'announcement_id', 'user_id');
    }

    /**********************************************************************************************
    
        SCOPES

    **********************************************************************************************/

    /**
     * Scope a query to only include announcements not dismissed by a specific user.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  \App\Models\User\User                  $user
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeNotDismissedBy($query, $user)
    {
        return $query->whereDoesntHave('dismissedByUsers', function($q) use ($user) {
            $q->where('user_id', $user->id);
        });
    }

    /**********************************************************************************************
    
        ACCESSORS

    **********************************************************************************************/

    /**
     * Gets the announcement's display name.
     *
     * @return string
     */
    public function getDisplayNameAttribute()
    {
        return $this->title;
    }

    /**
     * Gets the announcement's url.
     *
     * @return string
     */
    public function getUrlAttribute()
    {
        return '#announcements';
    }
}
