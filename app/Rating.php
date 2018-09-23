<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

use willvincent\Rateable\Rateable;

class Rating extends Model
{
    //
    public $fillable = ['rating','rateable_id','user_id','rateable','rateable_type','commenter'];

    public function rateable()
    {
        return $this->morphTo();
    }
    /**
     * Rating belongs to a user.
     *
     * @return User
     */
    public function user()
    {
        return $this->belongsTo('User');
    }

}
