<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\industries;
use App\sub_industries;
use App\topics;
use App\Rating;
use App\replycomment;
use App\LaravelEmojiOne;
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
    public function getview()
    {
        //
        $subitems = sub_industries::all(['ind_id','sub_ind_id', 'name']);
        $items = industries::all(['ind_id', 'name']);
         return view('pages.add_company',compact('items',$items));
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
       'message' => 'required|string|min:0',
       'state2' => 'required|string|min:0',
       'city' => 'required|string|min:0',
       'location' => 'required|string|min:0',
       'title' => 'required|string|min:0',

   ]);
$topic_id=mt_rand(13, rand(100, 99999990));
$emoji=new LaravelEmojiOne;
      $post = topics::create(array(
        'sub_in_id'=>$request->state,
       'topic_id' =>$topic_id,
        'topic_name' => $request->title,
       'description' => $emoji->toShort($request->message),
       'location' => $request->location,
       'city' => $request->city,
       'state' => $request->state2,
     'created_by' => Auth::user()->id
   ));


$topicid=topics::where("topic_id",$topic_id)->first();
  

          $post = $topicid->id;

          $rating = new \willvincent\Rateable\Rating;
          $rating->rating = $request->star;
                   $rating->title = $request->title;
            $rating->message = $emoji->toShort($request->message);
              $rating->topic_id = $topicid->topic_id;
          $rating->user_id = auth()->user()->id;

          $topicid->ratings()->save($rating);

    $message ='Topic has been successfully added!';
  return redirect()->back()->with('status', $message);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function createreply(Request $request)
    {
       $emoji=new LaravelEmojiOne; 
  $post = replycomment::create(array(
        'rating_id'=>$request->comment_id,
        'message' =>$emoji->toShort($request->message),
     'user_id' => Auth::user()->id
   ));


    $message ='Topic has been successfully added!';
  return redirect()->back()->with('status', $message);
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
