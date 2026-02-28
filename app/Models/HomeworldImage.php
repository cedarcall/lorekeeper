<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HomeworldImage extends Model
{
    protected $table = 'homeworld_images';
    protected $fillable = ['image_name', 'image_extension', 'alt_text', 'caption', 'sort_order'];

    /**
     * Get the URL for the image.
     */
    public function getImageUrlAttribute()
    {
        if (!$this->image_name) {
            return null;
        }
        
        $path = storage_path('app/public/homeworld/' . $this->image_name);
        if (!file_exists($path)) {
            return null;
        }
        
        return asset('storage/homeworld/' . $this->image_name);
    }
}
