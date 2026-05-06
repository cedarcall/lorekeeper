<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Illuminate\Support\Facades\Schema;

class Event extends Model
{
    protected $table = 'events';

    protected $fillable = [
        'slug', 'title', 'name', 'content', 'parsed_text', 'qna_content', 'qna_parsed_text', 'header_image', 'inspiration_images', 'start_at', 'end_at', 'is_visible', 'loot_table_id', 'award_id',
        'section_1_title', 'section_1_content', 'section_1_parsed_text', 'section_1_unlock_at',
        'section_2_title', 'section_2_content', 'section_2_parsed_text', 'section_2_unlock_at',
        'section_3_title', 'section_3_content', 'section_3_parsed_text', 'section_3_unlock_at',
        'locations_content', 'locations_parsed_text',
        'prompt_ideas_content', 'prompt_ideas_parsed_text'
    ];

    protected $casts = [
        'start_at' => 'datetime',
        'end_at' => 'datetime',
        'inspiration_images' => 'array',
        'section_1_unlock_at' => 'datetime',
        'section_2_unlock_at' => 'datetime',
        'section_3_unlock_at' => 'datetime',
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
        if(!Schema::hasTable('events') || !Schema::hasColumn('events', 'is_visible') || !Schema::hasColumn('events', 'end_at')) {
            return 0;
        }

        return static::where('is_visible', 1)
            ->whereNotNull('end_at')
            ->where('end_at', '<', Carbon::now())
            ->update(['is_visible' => 0]);
    }
}
