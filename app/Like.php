<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function rating()
    {
        return $this->belongsTo('App\Rating');
    }
    public static  function ra($id)
{
       return Like::where('post_id','=',  $id)->first();
}
}
