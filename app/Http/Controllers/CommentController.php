<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\industries;
use App\comments;
use App\sub_industries;
use App\topics;
use App\User;
use Illuminate\Http\Request;

class CommentController extends Controller
{
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
              $post = comments::create(array(
               'topic_id' =>$request->topic_id,
               'message' => $request->comment,
             'user_id' => Auth::user()->id
           ));

            $message ='Comment has been successfully added!';
          return redirect()->back()->with('status', $message);
    }


}
