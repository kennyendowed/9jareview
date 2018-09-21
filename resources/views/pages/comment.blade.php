@extends('layouts.site')

@section('title') Topic - @endsection

@section('content')



<section id="about" class="about-section text-center">
  <div class="container">
    <div class="row">

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">


        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-10">

            @include('layouts.sidebar')



      </div>
            <div class="col-md-8">
<h1 class="mx-auto my-0 text-uppercase">9ja - Voice</h1>
<div class="card mb-4">

  <div class="card mb-4">
   <div class="card-body">
       @foreach($additional_info as $pages)
     <h2 class="card-title">{{$pages->location}} / {{$pages->city}} / {{$pages->state}} </h2>
  <hr />   <p class="card-text">{{html_entity_decode(str_limit($pages->description, 100)) }}</p>
     <!-- <a href="#" class="btn btn-primary">Read More &rarr;</a> -->
       @endforeach
      <hr />
     <ul class="feed-elements list-unstyled">
@foreach($comment as $comment)

       <!-- List-->
       <li class="">
         <div class="feed  justify-content-between">
           <div class="feed-body  justify-content-between comment"><a href="#" class="feed-profile"><img src="{{url('img/profile/user2-160x160.jpg')}}" alt="person" class="img-fluid2 rounded-circle"></a>
             <div class="content"><strong>{{$post->user->name}}</strong>
               <div class="full-date"><small>{{$comment->created_at->diffForHumans() }}</small>

             <!-- <form action="{{ route('posts.post') }}" method="POST">

                                        {{ csrf_field() }}

                   <input id="input-1" name="input-1" class="rating rating-loading" data-min="0" data-max="5" data-step="0.1" value="{{$comment->averageRating }}" data-size="xs" disabled="">

                    <input type="hidden" name="id" required="" value="{{ $post->id }}">

                    <span class="review-no">422 reviews</span>

                    <br/>

                    <button class="btn btn-success">Submit Review</button>
            </form> -->
</div>



             </div>
           </div>
           <!-- <div class="date"><small>5min ago</small></div> -->
         </div>
         <div class="message-card"> <small>{{$comment->message}}</small></div>
         <!-- <div class="CTAs pull-right"><a href="#" class="btn btn-xs btn-dark"><i class="fa fa-thumbs-up"> </i>Like</a></div> -->
       </li>
       <hr />
       <!-- List-->
     @endforeach
     </ul>
  <hr />
  <form method="POST" action="{{ route('savecomment') }}" aria-label="{{ __('Comment') }}">
      @csrf
  <div class="box-footer">
                    <div class="input-group">
                      <input class="form-control" type="hidden" name="topic_id" value="{{$pages->topic_id}}" placeholder="">
                      <input type="text" class="form-control" name="comment" placeholder="Type message...">
                      @if ($errors->has('comment'))
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('comment') }}</strong>
                          </span>
                      @endif
                      <div class="input-group-btn">

                          <button type="submit" class="pull-right btnv btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>
                      </div>
                    </div>

                </div><!-- /.box (chat box) -->
  </form>
  </div>

  </div>

  </div>
</div>
  </div>
</section>


@endsection

  @section ('footer')

  <script type="text/javascript">

      $("#input-id").rating();


</script>

@endsection
