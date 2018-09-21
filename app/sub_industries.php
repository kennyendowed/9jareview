<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sub_industries extends Model
{
    //
    protected $fillable = [
        'sub_ind_id','ind_id','name',
    ];

    public function topic()
        {
          return $this->hasMany('App\topics');
        }
}
