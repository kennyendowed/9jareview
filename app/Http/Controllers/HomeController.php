<?php

namespace App\Http\Controllers;
use App\industries;
use App\comments;
use App\sub_industries;
use App\topics;
use App\User;
use App\Rating;
use App\Chirp;
use App\like;
use Illuminate\Http\Request;

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
 $gt=industries::find(1);
        $post = comments::find(1);
      $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
      $items = industries::all(['ind_id', 'name']);
      $additional_info = topics::orderBy('id', 'desc')->take(5)->get();
        // $additional_info = sub_industries::
        //                   where('sub_in_id',$additional_info->sub_in_id)
        //                   ->get();
       return view('welcome', compact('items',$items,'subitems',$subitems,'additional_info','$additional_info','post',$post,'topicname',$topicname,'gt',$gt));
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
   // $chirps = Chirp::find($id);
    $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
  $items = industries::all(['ind_id', 'name']);
  $additional_info = topics::where('location', '=', $name)->get();
  $comment = Rating::where('topic_id', '=',$id)->get();

return view('pages.comment', compact('items',$items,'subitems',$subitems,'cpost',$cpost,'additional_info',$additional_info,'comment',$comment,'post',$post,'topicname',$topicname));
}


  public function postLikePost(Request $request)
    {

       
         $id = $request['postId'];
        $is_like = $request['isLike'] === 'true';
        $update = false;
        $post = Rating::where('id','=',$id);
        if (!$post) {
            return null;
        }
        $user = \Auth::user();
        $like = $user->likes()->where('id', $id)->first();
        if ($like) {
            $already_like = $like->like;
            $update = true;
            if ($already_like == $is_like) {
                $like->delete();
                return null;
            }
        } else {
            $like = new Like();
        }
        $like->like = $is_like;
        $like->user_id = $user->id;
        $like->post_id = $post->id;
        if ($update) {
            $like->update();
        } else {
            $like->save();
        }
        return null;
    }
    //   public function actOnChirp(Request $request, $id)
    // {
    //     $action = $request->get('action');
    //     switch ($action) {
    //         case 'Like':
    //             Chirp::where('id', $id)->increment('likes_count');
    //             break;
    //         case 'Unlike':
    //             Chirp::where('id', $id)->decrement('likes_count');
    //             break;
    //     }
    //     event(new ChirpAction($id, $action)); // fire the event
    //     return '';
    // }

}
