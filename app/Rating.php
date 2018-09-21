<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    //
    public $fillable = ['rating'];
    
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
