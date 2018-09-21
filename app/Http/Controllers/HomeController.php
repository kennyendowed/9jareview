<?php

namespace App\Http\Controllers;
use App\industries;
use App\comments;
use App\sub_industries;
use App\topics;
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
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
      $items = industries::all(['ind_id', 'name']);
      $additional_info = topics::orderBy('id')->take(5)->get();

       return view('welcome', compact('items',$items,'subitems',$subitems,'additional_info','$additional_info'));
    }

public function load_topic($name,$id)
{
  $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
  $items = industries::all(['ind_id', 'name']);
  $additional_info = topics::
                          // ->whereNull('address')
                          // ->orWhereNull('name')
                          // ->orWhereNull('number')
                          where('sub_in_id',$id)
                          ->get();

return view('pages.topic', compact('items',$items,'subitems',$subitems,'additional_info','$additional_info'));
}

public function load_comment($name,$id)
{
  $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
  $items = industries::all(['ind_id', 'name']);
  $additional_info = topics::where('name', '=', $name)->get();
  $comment = comments::where('topic_id', '=',$id)->get();

return view('pages.comment', compact('items',$items,'subitems',$subitems,'additional_info',$additional_info,'comment',$comment));
}




}
