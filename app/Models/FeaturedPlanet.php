<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FeaturedPlanet extends Model
{
    protected $fillable = [
        'planet_id',
        'galaxy_id',
        'name',
        'slug',
        'rarity',
        'type',
        'risk_level',
        'theme',
        'description',
        'parsed_description',
        'start_at',
        'end_at',
        'loot_table_id',
        'is_active',
        'created_by'
    ];

    protected $casts = [
        'is_active' => 'boolean',
        'start_at' => 'datetime',
        'end_at' => 'datetime'
    ];

    public function galaxy()
    {
        return $this->belongsTo(Galaxy::class);
    }

    public function planet()
    {
        return $this->belongsTo('App\\Models\\Planet', 'planet_id');
    }

    public function lootTable()
    {
        return $this->belongsTo('App\\Models\\Loot\\LootTable', 'loot_table_id');
    }

    public function creator()
    {
        return $this->belongsTo('App\Models\User\User', 'created_by');
    }

    public function materials()
    {
        return $this->belongsToMany('App\Models\Item\Item', 'featured_planet_items');
    }
}
