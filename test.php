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
