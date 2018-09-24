<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\industries;
use App\comments;
use App\sub_industries;
use App\topics;
use App\User;
use App\Rating;
use App\Reviews;
use Illuminate\Support\Facades\Input;
use willvincent\Rateable\Rateable;
use Illuminate\Http\Request;

class CommentController extends Controller
{

     //use Rateable;
  /**
   * Create a new controller instance.
   *
   * @return void
   */
  public function __construct()
  {
      $this->middleware('auth');
  }

  /**
   * Show the application dashboard.
   *
   * @return \Illuminate\Http\Response
   */
   public function index()
   {
     $post = Post::find(1);
  }
    public function store_comment(Request $request)
    {
    //  $id=$request->topic_id;
      $input = array(
          'topic_id'  => Input::get('topic_id'),
      'comment' => Input::get('comment'),
      'rating'  => Input::get('star')

      );
              $post = comments::create(array(
               'topic_id' =>$request->topic_id,
               'message' => $request->comment,
             'user_id' => Auth::user()->id
           ));

           $message ='Comment has been successfully added!';
          // return redirect()->back()->with('status', $message);


          // instantiate Rating model
          $review = new Reviews;

          // If input passes validation - store the review in DB, otherwise return to product page with error message

        	$review->storeReviewForProduct($input['topic_id'], $input['comment'], $input['rating']);
        	return Redirect::to('comment/'.$input['topic_id'].'#reviews-anchor')->with('status', $message);

    }

    public function rate(Request $request)

       {

       $post = Comments::find($request->id);

  $rating = new \willvincent\Rateable\Rating;
    $rating->rating = $request->star;
      $rating->rateable_id = $request->id;
        $rating->commenter = $request->comm;
    $rating->user_id = auth()->user()->id;

    $post->ratings()->save($rating);

      return redirect()->back();
    //dd(Post::first()->ratings);

    }


    public function ratePost(Request $request)

       {

           request()->validate(['rate' => 'required']);

           $post = Comments::find($request->id);



           $rating = new \willvincent\Rateable\Rating;

           $rating->rating = $request->rate;
              $rating->commenter = $request->comm;

           $rating->user_id = auth()->user()->id;



           $post->ratings()->save($rating);



        return redirect()->back();

       }
}
