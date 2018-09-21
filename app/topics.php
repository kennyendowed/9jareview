<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class topics extends Model
{
  protected $fillable = [
      'sub_in_id', 'description','name','created_by','topic_id',
  ];
}
