<?php

namespace App\Models\User;

use App\Models\Model;

class UserEventItemRoll extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'item_id', 'event_id'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'user_event_item_rolls';

    /**********************************************************************************************

        RELATIONS

    **********************************************************************************************/

    /**
     * Get the user who rolled.
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User\User');
    }

    /**
     * Get the item that was rolled.
     */
    public function item()
    {
        return $this->belongsTo('App\Models\Item\Item');
    }

    /**
     * Get the event the roll was for.
     */
    public function event()
    {
        return $this->belongsTo('App\Models\Event');
    }

    /**********************************************************************************************

        SCOPES

    **********************************************************************************************/

    /**
     * Check if user has rolled this item for a specific event.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  int  $userId
     * @param  int  $itemId
     * @param  int  $eventId
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeHasRolled($query, $userId, $itemId, $eventId)
    {
        return $query->where('user_id', $userId)
                     ->where('item_id', $itemId)
                     ->where('event_id', $eventId);
    }

    /**********************************************************************************************

        OTHER FUNCTIONS

    **********************************************************************************************/

    /**
     * Record that a user has rolled a once-only item for an event.
     *
     * @param  int  $userId
     * @param  int  $itemId
     * @param  int  $eventId
     * @return static|null
     */
    public static function recordRoll($userId, $itemId, $eventId)
    {
        return static::firstOrCreate([
            'user_id' => $userId,
            'item_id' => $itemId,
            'event_id' => $eventId,
        ]);
    }

    /**
     * Check if a user has already rolled this item for this event.
     *
     * @param  int  $userId
     * @param  int  $itemId
     * @param  int  $eventId
     * @return bool
     */
    public static function hasUserRolled($userId, $itemId, $eventId)
    {
        return static::hasRolled($userId, $itemId, $eventId)->exists();
    }
}
