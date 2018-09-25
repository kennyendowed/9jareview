<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use willvincent\Rateable\Rateable;

class topics extends Model
{
  use Rateable;
  protected $fillable = [
      'sub_in_id', 'description','location','city','state','created_by','topic_id','rating_cache','rating_count',
  ];


  public function sub_industries()
  {
    return $this->belongsTo('App\sub_industries');
  }
  public function reviews()
{
return $this->hasMany('reviews');
}

public function recalculateRating()
 {
   $reviews = $this->reviews();
   $avgRating = $reviews->avg('rating');
   $this->rating_cache = round($avgRating,1);
   $this->rating_count = $reviews->count();
   $this->save();
 }

 public function ratings()
 {
     return $this->morphMany('willvincent\Rateable\Rating', 'rateable');
 }

}
