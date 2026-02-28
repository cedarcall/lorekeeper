<?php

namespace App\Models\User;

use App\Models\Model;

class UserItemChargeProgress extends Model
{
    protected $fillable = [
        'user_id', 'item_id', 'charges_used'
    ];

    protected $table = 'user_item_charge_progress';

    public $timestamps = true;

    public function user()
    {
        return $this->belongsTo('App\Models\User\User');
    }

    public function item()
    {
        return $this->belongsTo('App\Models\Item\Item');
    }
}
