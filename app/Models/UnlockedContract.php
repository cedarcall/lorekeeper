<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UnlockedContract extends Model
{
    protected $table = 'unlocked_contracts';
    protected $fillable = ['user_id', 'contract_id'];
    public $timestamps = false;

    public function user()
    {
        return $this->belongsTo('App\Models\User\User');
    }

    public function contract()
    {
        return $this->belongsTo(Contract::class);
    }
}
