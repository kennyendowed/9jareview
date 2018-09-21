<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class comments extends Model
{
  protected $fillable = [
      'user_id', 'message','topic_id',
  ];

  public function user()
      {
        return $this->belongsTo('App\User');
      }

}
