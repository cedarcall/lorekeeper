<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserContract extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'contract_id', 'status', 'claimed_at', 'completed_at'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'user_contracts';

    public $timestamps = true;

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'claimed_at' => 'datetime',
        'completed_at' => 'datetime',
    ];

    /**
     * Get the user that owns the contract claim.
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User\User');
    }

    /**
     * Get the contract.
     */
    public function contract()
    {
        return $this->belongsTo('App\Models\Contract');
    }
}
