<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class topics extends Model
{
  protected $fillable = [
      'sub_in_id', 'description','location','city','state','created_by','topic_id',
  ];


  public function sub_industries()
  {
    return $this->belongsTo('App\sub_industries');
  }
}
