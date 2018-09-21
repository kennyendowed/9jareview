<?php

namespace App\Http\Controllers;
use App\industries;
use App\comments;
use App\sub_industries;
use App\topics;
use App\User;
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
        $post = comments::find(1);
      $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
      $items = industries::all(['ind_id', 'name']);
      $additional_info = topics::orderBy('id', 'desc')->take(5)->get();

       return view('welcome', compact('items',$items,'subitems',$subitems,'additional_info','$additional_info','post',$post));
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
  $topicname = sub_industries::find(1);
  $post = comments::find(1);
  $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
  $items = industries::all(['ind_id', 'name']);
  $additional_info = topics::where('location', '=', $name)->get();
  $comment = comments::where('topic_id', '=',$id)->get();

return view('pages.comment', compact('items',$items,'subitems',$subitems,'additional_info',$additional_info,'comment',$comment,'post',$post,'topicname',$topicname));
}


}
