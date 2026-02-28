<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Galaxy extends Model
{
    protected $fillable = ['name', 'is_current', 'rotation_date'];
    protected $casts = ['is_current' => 'boolean', 'rotation_date' => 'datetime'];
    
    public function planets()
    {
        return $this->hasMany(Planet::class);
    }
}
