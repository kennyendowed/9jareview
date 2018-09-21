<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\industries;
use App\sub_industries;
use App\topics;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class TopicController extends Controller
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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
        $items = industries::all(['ind_id', 'name']);
         return view('pages.new_topic',compact('items',$items,'subitems',$subitems));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
      $this->validate($request, [
       'country' => 'required|numeric|min:0',
       'state' => 'required|numeric|min:0',
       'topicname' => 'required|string|min:0',
       'message' => 'required|string|min:0',
   ]);

      $post = topics::create(array(
        'sub_in_id'=>$request->state,
       'topic_id' =>mt_rand(13, rand(100, 99999990)),
       'description' => $request->message,
       'name' => $request->topicname,
     'created_by' => Auth::user()->id
   ));

    $message ='Topic has been successfully added!';
  return redirect()->back()->with('status', $message);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
  public function getSubindustry($id)
  {
      $states = sub_industries::where("ind_id",$id)->pluck("name","sub_ind_id");

      return json_encode($states);
  }

}