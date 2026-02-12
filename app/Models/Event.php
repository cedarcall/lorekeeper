<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $table = 'events';

    protected $fillable = [
        'slug', 'title', 'name', 'content', 'parsed_text', 'qna_content', 'qna_parsed_text', 'header_image', 'start_at', 'end_at', 'is_visible'
    ];

    protected $casts = [
        'start_at' => 'datetime',
        'end_at' => 'datetime',
    ];
}
