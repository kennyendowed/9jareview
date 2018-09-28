<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class replycomment extends Model
{
    //
      protected $fillable = [
      'user_id','message','rating_id',
  ];


   public function rating()
    {
        return $this->belongsTo(Rating::class);
    }

}
