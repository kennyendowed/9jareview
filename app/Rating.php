<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

use willvincent\Rateable\Rateable;

class Rating extends Model
{
    //
    public $fillable = ['rating','rateable_id','title','user_id','rateable','rateable_type','message','topic_id'];

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
 public function likes()
    {
        return $this->hasMany('App\Like');
    }
}
