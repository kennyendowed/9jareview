<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class industries extends Model
{
    //
    protected $fillable = [
        'ind_id', 'name',
    ];

   public function sub()
        {
          return $this->hasMany('App\sub_industries');
        }

}
