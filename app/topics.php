<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use willvincent\Rateable\Rateable;
class topics extends Model
{
    use Rateable;
  protected $fillable = [
      'sub_in_id','topic_name','description','location','city','state','created_by','topic_id','rating_cache','rating_count',
  ];


  public function sub_industries()
  {
    return $this->belongsTo('App\sub_industries');
  }
  public function reviewas()
{
return $this->hasMany('Review');
}

public function recalculateRating()
 {
   $reviews = $this->reviews();
   $avgRating = $reviews->avg('rating');
   $this->rating_cache = round($avgRating,1);
   $this->rating_count = $reviews->count();
   $this->save();
 }
 public function reviews()
    {
        return $this->hasMany(TopicReview::class);
    }

    public function getStarRating()
    {
        $count = $this->reviews()->count();
        if(empty($count)){
            return 0;
        }
        $starCountSum=$this->reviews()->sum('rating');
        $average=$starCountSum/ $count;

       return $average;

    }
}
