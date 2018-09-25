<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TopicReview extends Model
{
    protected $fillable=[
        'headline',
        'description',
        'product_id',
        'rating'
    ];
}
