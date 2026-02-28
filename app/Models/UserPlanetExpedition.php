<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserPlanetExpedition extends Model
{
    protected $fillable = ['user_id', 'planet_id', 'visit_count', 'highest_unlocked_tier', 'is_discoverer'];
    protected $casts = ['is_discoverer' => 'boolean'];
    
    public function user()
    {
        return $this->belongsTo('App\Models\User\User');
    }
    
    public function planet()
    {
        return $this->belongsTo(Planet::class);
    }
}
