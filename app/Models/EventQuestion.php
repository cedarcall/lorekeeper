<?php

namespace App\Models;

use App\Models\Model;

class EventQuestion extends Model
{
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
        'user_id', 'event_id', 'question', 'answer', 'answered_by', 'answered_at', 'status'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'event_questions';

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'answered_at' => 'datetime',
    ];

    /**********************************************************************************************

        RELATIONS

    **********************************************************************************************/

    /**
     * Get the user who asked the question.
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User\User', 'user_id');
    }

    /**
     * Get the event the question is for.
     */
    public function event()
    {
        return $this->belongsTo('App\Models\Event', 'event_id');
    }

    /**
     * Get the staff member who answered.
     */
    public function staff()
    {
        return $this->belongsTo('App\Models\User\User', 'answered_by');
    }

    /**********************************************************************************************

        SCOPES

    **********************************************************************************************/

    /**
     * Scope to get pending questions.
     */
    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }

    /**
     * Scope to get answered questions.
     */
    public function scopeAnswered($query)
    {
        return $query->where('status', 'answered');
    }

    /**********************************************************************************************

        ACCESSORS

    **********************************************************************************************/

    /**
     * Check if the question has been answered.
     *
     * @return bool
     */
    public function getIsAnsweredAttribute()
    {
        return $this->status === 'answered';
    }
}
