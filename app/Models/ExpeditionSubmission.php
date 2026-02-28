<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Traits\Commentable;

class ExpeditionSubmission extends Model
{
    use Commentable;
    
    protected $fillable = ['user_id', 'planet_id', 'title', 'status', 'submission_type', 'description', 'image_extension', 'image_name', 'notes', 'approved_at', 'credit_reward', 'reputation_reward', 'resource_boost_item_id', 'resource_boost_target_item_id'];
    protected $casts = ['approved_at' => 'datetime'];
    protected $table = 'expedition_submissions';
    
    public function user()
    {
        return $this->belongsTo('App\Models\User\User');
    }
    
    public function planet()
    {
        return $this->belongsTo(Planet::class);
    }
    
    /**
     * Get the URL for the submitted image/file.
     */
    public function getImageUrlAttribute()
    {
        if (!$this->image_name) {
            return null;
        }
        
        // Check if file exists
        $path = storage_path('app/public/expeditions/' . $this->image_name);
        if (!file_exists($path)) {
            return null;
        }
        
        return asset('storage/expeditions/' . $this->image_name);
    }
}
