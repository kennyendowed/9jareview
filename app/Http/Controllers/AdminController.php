<?php

namespace App\Http\Controllers;
use App\industries;
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
}
