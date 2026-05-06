<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserVerificationApplication extends Model
{
    protected $fillable = [
        'user_id',
        'social_media_link',
        'join_reason',
        'rules_confirmed',
        'voidi_species_answer',
        'status',
        'reviewed_by',
        'review_notes',
        'reviewed_at',
    ];

    protected $casts = [
        'rules_confirmed' => 'boolean',
        'reviewed_at' => 'datetime',
    ];

    public function user()
    {
        return $this->belongsTo('App\\Models\\User\\User', 'user_id');
    }

    public function reviewer()
    {
        return $this->belongsTo('App\\Models\\User\\User', 'reviewed_by');
    }

    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }
}
