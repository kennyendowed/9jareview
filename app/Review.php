<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\topics;

class Review extends Model
{
  protected $fillable = [
      'user_id','comment','topic_id','rating',
  ];
    //

    public function getCreateRules()
    {
        return array(
            'comment'=>'required|min:10',
            'rating'=>'required|integer|between:1,5'
        );
    }


    public function user()
 {
   return $this->belongsTo('User');
 }

 public function topics()
 {
   return $this->belongsTo('topics');
 }

 public function scopeApproved($query)
 {
   return $query->where('approved', true);
 }

 public function scopeSpam($query)
 {
   return $query->where('spam', true);
 }

 public function scopeNotSpam($query)
 {
   return $query->where('spam', false);
 }
 public function getTimeagoAttribute()
 {
   $date = CarbonCarbon::createFromTimeStamp(strtotime($this->created_at))->diffForHumans();
   return $date;
 }
 public function storeReviewForProduct($productID, $comment, $rating)
{
<<<<<<< HEAD:app/Reviews.php
 $product = topics::where('topic_id', $productID);
=======
 $product = \App\review::find($productID);
>>>>>>> c987078f15abf0daaec8661e5e4ae0d9503492c3:app/Review.php

  // this will be added when we add user's login functionality
  //$this->user_id = Auth::user()->id;

  $this->comment = $comment;
  $this->rating = $rating;
  $product->reviews()->save($this);

  // recalculate ratings for the specified product
  return $product->recalculateRating();
}

}
