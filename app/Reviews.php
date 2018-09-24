<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reviews extends Model
{
  protected $fillable = [
      'user_id','comment','topic_id','rating',
  ];
    //
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
 $product = topics::find($productID);

  // this will be added when we add user's login functionality
  //$this->user_id = Auth::user()->id;

  $this->comment = $comment;
  $this->rating = $rating;
  $product->reviews()->save($this);

  // recalculate ratings for the specified product
  $product->recalculateRating();
}
}
