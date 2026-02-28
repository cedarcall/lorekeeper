<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Planet extends Model
{
    protected $fillable = [
        'galaxy_id', 'name', 'slug', 'rarity', 'type', 'risk_level', 'theme', 'description', 
        'discoverer_id', 'discovered_at', 'image_extension', 'thumb_extension', 'is_active',
        'has_hazard', 'hazard_name', 'hazard_penalty', 'hidden_item_id',
        // Vital info fields
        'weather', 'flora_level', 'fauna_level', 'danger_level', 'atmosphere', 'terrain', 'special_notes',
        // Reference images and color palette
        'ref_image_1', 'ref_image_2', 'ref_image_3', 'ref_image_4', 'ref_image_5', 'color_palette'
    ];
    protected $casts = [
        'is_active' => 'boolean', 
        'has_hazard' => 'boolean',
        'discovered_at' => 'datetime',
        'color_palette' => 'array'
    ];
    
    /**
     * Directory for planet reference images.
     */
    public $refImageDirectory = 'images/data/planets/references';
    
    public function galaxy()
    {
        return $this->belongsTo(Galaxy::class);
    }
    
    public function discoverer()
    {
        return $this->belongsTo('App\Models\User\User', 'discoverer_id');
    }
    
    public function infoTiers()
    {
        return $this->hasMany(PlanetInfoTier::class)->orderBy('tier_number');
    }
    
    public function userExpeditions()
    {
        return $this->hasMany(UserPlanetExpedition::class);
    }
    
    public function submissions()
    {
        return $this->hasMany(ExpeditionSubmission::class);
    }

    public function hiddenItem()
    {
        return $this->belongsTo('App\Models\Item\Item', 'hidden_item_id');
    }
    
    // Get unlock threshold based on rarity
    public function getUnlockThresholdAttribute()
    {
        $thresholds = [
            'common' => 3,
            'uncommon' => 5,
            'rare' => 8,
            'legendary' => 12
        ];
        return $thresholds[$this->rarity] ?? 5;
    }
    
    // Check if user has unlocked this planet
    public function isUnlockedByUser($userId)
    {
        $expedition = UserPlanetExpedition::where('user_id', $userId)->where('planet_id', $this->id)->first();
        return $expedition && $expedition->visit_count >= $this->unlock_threshold;
    }
    
    // Check if user is the discoverer
    public function isDiscoveredByUser($userId)
    {
        return $this->discoverer_id == $userId;
    }
    
    /**
     * Get the list of vital info fields in unlock order.
     */
    public static function getVitalInfoFields()
    {
        return [
            1 => 'weather',
            2 => 'flora_level',
            3 => 'fauna_level',
            4 => 'danger_level',
            5 => 'atmosphere',
            6 => 'terrain',
            7 => 'special_notes',
        ];
    }
    
    /**
     * Calculate which visit unlocks a specific field based on planet's rarity.
     * Scales the 7 info fields across the planet's unlock threshold.
     * 
     * @param int $fieldIndex (1-7)
     * @return int Visit number when this field unlocks
     */
    public function getFieldUnlockVisit($fieldIndex)
    {
        $threshold = $this->unlock_threshold;
        // Formula: spread 7 fields across the unlock threshold
        // Field 1 always unlocks at visit 1, field 7 unlocks at final visit
        return max(1, (int)ceil(($fieldIndex - 0.5) * $threshold / 7));
    }
    
    /**
     * Get vital info unlocked for a specific user based on their visit count.
     * Unlock points scale based on the planet's rarity threshold.
     * 
     * @param int $userId
     * @return array Array of unlocked info with field names as keys
     */
    public function getUnlockedVitalInfo($userId)
    {
        $expedition = UserPlanetExpedition::where('user_id', $userId)
            ->where('planet_id', $this->id)
            ->first();
        
        $visitCount = $expedition ? $expedition->visit_count : 0;
        $unlockedInfo = [];
        
        foreach (self::getVitalInfoFields() as $fieldIndex => $field) {
            $unlockVisit = $this->getFieldUnlockVisit($fieldIndex);
            if ($visitCount >= $unlockVisit && $this->$field) {
                $unlockedInfo[$field] = $this->$field;
            }
        }
        
        return $unlockedInfo;
    }
    
    /**
     * Get the next field that will unlock and at what visit count.
     * 
     * @param int $currentVisitCount
     * @return array|null ['visit' => int, 'field' => string, 'label' => string] or null if all unlocked
     */
    public function getNextUnlock($currentVisitCount)
    {
        foreach (self::getVitalInfoFields() as $fieldIndex => $field) {
            $unlockVisit = $this->getFieldUnlockVisit($fieldIndex);
            if ($currentVisitCount < $unlockVisit && $this->$field) {
                return [
                    'visit' => $unlockVisit,
                    'field' => $field,
                    'label' => self::getVitalInfoLabel($field)
                ];
            }
        }
        return null;
    }
    
    /**
     * Get all vital info (for admin/display purposes).
     */
    public function getAllVitalInfo()
    {
        $info = [];
        foreach (self::getVitalInfoFields() as $field) {
            if ($this->$field) {
                $info[$field] = $this->$field;
            }
        }
        return $info;
    }
    
    /**
     * Get reference image URL by number (1-5).
     */
    public function getRefImageUrl($number)
    {
        $field = 'ref_image_' . $number;
        if (!$this->$field) return null;
        return asset($this->refImageDirectory . '/' . $this->$field);
    }
    
    /**
     * Get all reference images that are set.
     */
    public function getRefImagesAttribute()
    {
        $images = [];
        for ($i = 1; $i <= 5; $i++) {
            $url = $this->getRefImageUrl($i);
            if ($url) {
                $images[$i] = $url;
            }
        }
        return $images;
    }
    
    /**
     * Get formatted vital info field name for display.
     */
    public static function getVitalInfoLabel($field)
    {
        $labels = [
            'weather' => 'Weather',
            'flora_level' => 'Flora Level',
            'fauna_level' => 'Fauna Level',
            'danger_level' => 'Danger Level',
            'atmosphere' => 'Atmosphere',
            'terrain' => 'Terrain',
            'special_notes' => 'Special Notes',
        ];
        return $labels[$field] ?? ucfirst(str_replace('_', ' ', $field));
    }
}
