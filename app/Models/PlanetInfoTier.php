<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PlanetInfoTier extends Model
{
    protected $fillable = ['planet_id', 'tier_number', 'info_data'];
    protected $casts = ['info_data' => 'array'];
    
    public function planet()
    {
        return $this->belongsTo(Planet::class);
    }
}
