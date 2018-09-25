<?php

namespace App\Http\Controllers;
use App\industries;
use App\comments;
use App\sub_industries;
use App\topics;
use App\User;
use App\Rating;
use Illuminate\Http\Request;
use App\Post;

class HomeController extends Controller
{


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $topicname= sub_industries::find(1);
 
        $post = comments::find(1);
      $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
      $items = industries::all(['ind_id', 'name']);
      $additional_info = topics::orderBy('id', 'desc')->take(5)->get();
        // $additional_info = sub_industries::
        //                   where('sub_in_id',$additional_info->sub_in_id)
        //                   ->get();
       return view('welcome', compact('items',$items,'subitems',$subitems,'additional_info','$additional_info','post',$post,'topicname',$topicname));
    }

public function load_topic($name,$id)
{

  $topicname= sub_industries::find(1);
    // echo $topicname->name;
      $post = comments::find(1);
  $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
  $items = industries::all(['ind_id', 'name']);
  $additional_info = topics::
                          // ->whereNull('address')
                          // ->orWhereNull('name')
                          // ->orWhereNull('number')
                          where('sub_in_id',$id)
                          ->get();

return view('pages.topic', compact('items',$items,'subitems',$subitems,'additional_info',$additional_info,'post',$post,'topicname',$topicname));
}

public function load_comment($name,$id)
{
   $cpost = comments::find($id);
  $topicname = sub_industries::find(1);
  $post = comments::find(1);
  $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
  $items = industries::all(['ind_id', 'name']);
  $additional_info = topics::where('location', '=', $name)->get();
  $comment = Rating::where('topic_id', '=',$id)->get();

return view('pages.comment', compact('items',$items,'subitems',$subitems,'cpost',$cpost,'additional_info',$additional_info,'comment',$comment,'post',$post,'topicname',$topicname));
}

public function posts()

   {

       $posts = Post::all();

       return view('posts',compact('posts'));

   }



   public function show($id)

   {

       $post = Post::find($id);

       return view('postsShow',compact('post'));

   }



   public function postPost(Request $request)

   {

       //request()->validate(['rate' => 'required']);

       $post = topics::find($request->id);



       $rating = new \willvincent\Rateable\Rating;

       $rating->rating = $request->star;
       $rating->message = $request->message;
       $rating->user_id = auth()->user()->id;



       $post->ratings()->save($rating);



       return redirect()->route("posts");

   }

}
