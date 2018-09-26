<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Chirp extends Model
{
	   public $fillable = ['text','text','user_id','likes_count','posted_at'];
     public $timestamps = false;

        protected $guarded = [];

       // public function author()
          public function usercomment()
        {
            return $this->belongsTo(rating::class, 'user_id', 'id');
        }
}
