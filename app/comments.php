<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use willvincent\Rateable\Rateable;

class comments extends Model
{
  use Rateable;
  protected $fillable = [
    'id','user_id','message','topic_id',
  ];

  public function user()
      {
        return $this->belongsTo('App\User');
      }

}
