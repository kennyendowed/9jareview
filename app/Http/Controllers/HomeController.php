<?php

namespace App\Http\Controllers;
use App\industries;
use App\sub_industries;
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
       return view('welcome', compact('items',$items,'subitems',$subitems));
    }
}
