<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Event extends Model
{
    protected $table = 'events';

    protected $fillable = [
        'slug', 'title', 'name', 'content', 'parsed_text', 'qna_content', 'qna_parsed_text', 'header_image', 'inspiration_images', 'start_at', 'end_at', 'is_visible', 'loot_table_id', 'award_id'
    ];

    protected $casts = [
        'start_at' => 'datetime',
        'end_at' => 'datetime',
        'inspiration_images' => 'array',
    ];
    
    /**
     * Directory for event inspiration images.
     */
    public $inspirationImageDirectory = 'images/events/inspiration';
    
    /**
     * Get inspiration images as array of URLs.
     */
    public function getInspirationImageUrlsAttribute()
    {
        if (!$this->inspiration_images || !is_array($this->inspiration_images)) {
            return [];
        }
        return array_map(function($img) {
            return asset($this->inspirationImageDirectory . '/' . $img);
        }, $this->inspiration_images);
    }
    
    /**
     * Get the loot table associated with this event.
     */
    public function lootTable()
    {
        return $this->belongsTo('App\Models\Loot\LootTable', 'loot_table_id');
    }

    /**
     * Get the award/badge associated with this event.
     */
    public function award()
    {
        return $this->belongsTo('App\Models\Award\Award', 'award_id');
    }

    /**
     * Get the submissions for this event.
     */
    public function submissions()
    {
        return $this->hasMany('App\Models\EventSubmission', 'event_id');
    }

    public static function archiveExpiredVisibleEvents()
    {
        return static::where('is_visible', 1)
            ->whereNotNull('end_at')
            ->where('end_at', '<', Carbon::now())
            ->update(['is_visible' => 0]);
    }
}
