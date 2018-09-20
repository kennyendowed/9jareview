<?php

namespace App\Http\Controllers;
use App\industries;
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
      $items = industries::all(['ind_id', 'name']);
       return view('welcome', compact('items',$items));
    }
}
