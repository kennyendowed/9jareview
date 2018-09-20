<?php

namespace App\Http\Controllers;
use App\industries;
use App\sub_industries;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class AdminController extends Controller
{
  public function __construct()
 {
     $this->middleware('auth');
 }
 public function admin()
 {
     return view('admin');
 }

public function create_industry()
{
 return view('ControlRoom.industry');

}
public function store_industry(Request $request)
{
    #code


     foreach ($request->catname as $cat_name)
        {
          $post = industries::create(array(
           'ind_id' => mt_rand(13, rand(100, 99999990)),
           'name' => $cat_name
           // 'author' => Auth::user()->id
       ));
        }
        $message ='Post has been successfully added!';
      return redirect()->back()->with('status', $message);
}

public function create_sub_industry()
{
  $items = industries::all(['ind_id', 'name']);
   return view('ControlRoom.sub_industry', compact('items',$items));
}


public function store_sub_industry(Request $request)
{
    #code
     foreach ($request->subname as $sub_name)
        {
          $post = sub_industries::create(array(
           'sub_ind_id' => mt_rand(13, rand(100, 99999990)),
           'ind_id' => $request->industry,
           'name' => $sub_name
           // 'author' => Auth::user()->id
       ));
        }
        $message ='Post has been successfully added!';
      return redirect()->back()->with('status', $message);
}



}
