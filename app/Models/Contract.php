<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contract extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'description', 'summary', 'parsed_description', 'location', 'planet_id',
        'required_items', 'rewards', 'max_claims', 'sort', 'image_extension', 'thumb_extension',
        'is_active', 'occur_start', 'occur_end', 'is_randomizable', 'unlock_contract_chance', 'rarity_weight'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'contracts';

    protected $dates = ['occur_start', 'occur_end'];

    public $timestamps = true;

    /**
     * Validation rules for creation.
     *
     * @var array
     */
    public static $createRules = [
        'name' => 'required|unique:contracts|between:3,100',
        'description' => 'nullable',
        'summary' => 'nullable|max:300',
        'image' => 'mimes:png,gif,jpg,jpeg',
        'thumb' => 'mimes:png,gif,jpg,jpeg',
    ];

    /**
     * Validation rules for updating.
     *
     * @var array
     */
    public static $updateRules = [
        'name' => 'required|between:3,100',
        'description' => 'nullable',
        'summary' => 'nullable|max:300',
        'image' => 'mimes:png,gif,jpg,jpeg',
        'thumb' => 'mimes:png,gif,jpg,jpeg',
    ];

    /**********************************************************************************************

        RELATIONS

    **********************************************************************************************/

    /**
     * Get the user contract claims for this contract.
     */
    public function userContracts()
    {
        return $this->hasMany('App\Models\UserContract');
    }

    /**
     * Get the planet this contract is linked to.
     */
    public function planet()
    {
        return $this->belongsTo('App\Models\Planet');
    }

    /**********************************************************************************************

        ACCESSORS

    **********************************************************************************************/

    /**
     * Get the required items as an array.
     *
     * @return array
     */
    public function getRequiredItemsArrayAttribute()
    {
        if (!$this->required_items) return [];
        return json_decode($this->required_items, true);
    }

    /**
     * Get the rewards as an array.
     *
     * @return array
     */
    public function getRewardsArrayAttribute()
    {
        if (!$this->rewards) return [];
        return json_decode($this->rewards, true);
    }

    /**
     * Get the display location - shows planet name if discovered, otherwise "Unknown".
     * Falls back to the location text field if no planet is linked.
     *
     * @return string|null
     */
    public function getDisplayLocationAttribute()
    {
        // If no planet is linked, fall back to the text location field
        if (!$this->planet_id || !$this->planet) {
            return $this->location;
        }
        
        // If planet has a discoverer (has been named), show the planet name
        if ($this->planet->discoverer_id) {
            return $this->planet->name;
        }
        
        // Planet not yet discovered/named
        return 'Unknown';
    }

    /**
     * Get users who have unlocked this contract.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function unlockedByUsers()
    {
        return $this->hasMany(UnlockedContract::class);
    }

    /**
     * Displays the model's name, linked to its encyclopedia page.
     *
     * @return string
     */
    public function getDisplayNameAttribute()
    {
        return '<a href="'.$this->url.'" class="display-item">'.$this->name.'</a>';
    }

    /**
     * Gets the file directory containing the model's image.
     *
     * @return string
     */
    public function getImageDirectoryAttribute()
    {
        return 'images/data/contracts';
    }

    /**
     * Gets the file name of the model's image.
     *
     * @return string
     */
    public function getImageFileNameAttribute()
    {
        return $this->id . '-image.' . $this->image_extension;
    }

    /**
     * Gets the path to the file directory containing the model's image.
     *
     * @return string
     */
    public function getImagePathAttribute()
    {
        return public_path($this->imageDirectory);
    }

    /**
     * Gets the URL of the model's image.
     *
     * @return string
     */
    public function getImageUrlAttribute()
    {
        if (!$this->image_extension) return null;
        return asset($this->imageDirectory . '/' . $this->imageFileName);
    }

    /**
     * Gets the file name of the model's thumbnail image.
     *
     * @return string
     */
    public function getThumbFileNameAttribute()
    {
        return $this->id . '-thumb.' . $this->thumb_extension;
    }

    /**
     * Gets the URL of the model's thumbnail image.
     *
     * @return string
     */
    public function getThumbUrlAttribute()
    {
        if (!$this->thumb_extension) return $this->imageUrl;
        return asset($this->imageDirectory . '/' . $this->thumbFileName);
    }

    /**
     * Gets the URL of the model's encyclopedia page.
     *
     * @return string
     */
    public function getUrlAttribute()
    {
        return url('contracts/' . $this->id);
    }
}
