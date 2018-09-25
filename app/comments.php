<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use willvincent\Rateable\Rateable;

class comments extends Model
{
  use Rateable;
  protected $fillable = [
    'id','user_id','message','topic_id','rating',
  ];

  public function user()
      {
        return $this->belongsTo('App\User');
      }
      public function topic()
       {
         return $this->belongsTo('topics');
       }
}
