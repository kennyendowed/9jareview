<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class replycomment extends Model
{
    //
      protected $fillable = [
      'user_id','message','comment_id',
  ];

}
