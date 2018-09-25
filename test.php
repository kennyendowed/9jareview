  <button class="dislike">
    <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
</button>

<button class="like">
    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
</button>   
  <div class="col-md-12">
              <div class="box box-solid">
                <div class="box-header with-border text-center">
                  <h4><small>{{$comment->title}}</small> </h4>
                   @php $rating = $comment->rating; @endphp  

            @foreach(range(1,5) as $i)
                <span class="fa-stack" style="width:1em">
                    <i class="far fa-star fa-stack-1x starco"></i>

                    @if($rating >0)
                        @if($rating >0.5)
                            <i class="fas fa-star fa-stack-1x starco"></i>
                        @else
                            <i class="fas fa-star-half fa-stack-1x starco"></i>
                        @endif
                    @endif
                    @php $rating--; @endphp
                </span>
            @endforeach
                </div><!-- /.box-header -->
                <div class="box-body">
                  <a href="#" class=""><img src="{{url('img/profile/user2-160x160.jpg')}}" alt="person" class="img-fluid2 rounded-circle"></a>
                  <blockquote class="text-center">
                    <p> {{$comment->message}} <br>

                    <small class="pull-right">by  {{$post->user->name}} <cite title="Source Title">  </cite>    {{$comment->created_at->diffForHumans() }}</small></p>
                  </blockquote>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>





      <li class="">
         <div class="feed  justify-content-between">
           <div class="feed-body  justify-content-between comment"><a href="#" class="feed-profile"><img src="{{url('img/profile/user2-160x160.jpg')}}" alt="person" class="img-fluid2 rounded-circle"></a>
             <div class="content"><strong>{{$post->user->name}}</strong>
               @php $rating = $comment->rating; @endphp  

            @foreach(range(1,5) as $i)
                <span class="fa-stack" style="width:1em">
                    <i class="far fa-star fa-stack-1x starco"></i>

                    @if($rating >0)
                        @if($rating >0.5)
                            <i class="fas fa-star fa-stack-1x starco"></i>
                        @else
                            <i class="fas fa-star-half fa-stack-1x starco"></i>
                        @endif
                    @endif
                    @php $rating--; @endphp
                </span>
            @endforeach
               <div class="full-date"><small>{{$comment->created_at->diffForHumans() }}</small>
             </div>
           </div>
           <!-- <div class="date"><small>5min ago</small></div> -->
         </div>
       </div>
         <h4><small>{{$comment->title}}</small> </h4>
         <div class="message-card"> <small>{{$comment->message}}</small></div>
         <!-- <div class="CTAs pull-right"><a href="#" class="btn btn-xs btn-dark"><i class="fa fa-thumbs-up"> </i>Like</a></div> -->
       </li>





<div class="col-md-2"><span id="loader"><i class="fa fa-spinner fa-3x fa-spin"></i></span></div>

           <!-- {{$cpost[averageRating]}}  -->

        <div>
            @if(count($additional_info) > 0)
                Here are the rows that has Null values: <br/>
                     Please go back and fill up the values of
                     @if($additional_info->EC_name == null)
                         EC_name
                     @endif
                     @if($additional_info->EC_relationship== null)
                         EC_relationship
                     @endif
                     @if($additional_info->EC_address== null)
                         EC_address
                     @endif
                     // and so on. There is a shorter way but I'm not in my laptop right now. But this should work fine

            @else
                 {{ $id }} has no Null data found
            @endif
        </div>
    <!-- @if(!empty($additional_info)) -->
    <!-- <form action="{{ route('posts.post') }}" method="POST">

                         {{ csrf_field() }}

    <input id="input-1" name="input-1" class="rating rating-loading" data-min="0" data-max="5" data-step="0.1" value="{{$comment->averageRating }}" data-size="xs" disabled="">

     <input type="hidden" name="id" required="" value="{{ $post->id }}">

     <span class="review-no">422 reviews</span>

     <br/>

     <button class="btn btn-success">Submit Review</button>
</form> -->
