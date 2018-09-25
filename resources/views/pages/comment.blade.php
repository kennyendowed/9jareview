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
<h1 class="mx-auto my-0 text-uppercase">Naija - Reviews</h1>
<div class="card mb-4">

  <div class="card mb-4">
   <div class="card-body">
       @foreach($additional_info as $pages)
     <h2 class="card-title">{{$pages->location}} / {{$pages->city}} / {{$pages->state}} </h2>
  <hr />   <p class="card-text">{{html_entity_decode(str_limit($pages->description, 100)) }}</p>
  @for ($i=1; $i <= 5 ; $i++)
    <span class="glyphicon glyphicon-star{{ ($i <= $pages->rating) ? '' : '-empty'}}"></span>
  @endfor
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

                 <!-- <div class="stars">
                 <form action="{{ route('rate') }}" method="POST">

                        {{ csrf_field() }}
                <input type="hidden" name="comm" value="{{$comment->user_id}}" />
                <input type="hidden" name="id" value="{{$comment->id}}" />
                 <input  class="star star-5" id="star-5" type="radio" value="5" name="star"/>
                 <label class="star star-5" for="star-5"></label>
                 <input class="star star-4" id="star-4" type="radio" value="4" name="star"/>
                 <label class="star star-4" for="star-4"></label>
                 <input class="star star-3" id="star-3" type="radio" value="3" name="star"/>
                 <label class="star star-3" for="star-3"></label>
                 <input class="star star-2" id="star-2" type="radio" value="2" name="star"/>
                 <label class="star star-2" for="star-2"></label>
                 <input class="star star-1" id="star-1" type="radio" value="1" name="star"/>
                 <label class="star star-1" for="star-1"></label>
                 <button type="submit" class="btnvv btn-info" id="sendEmail">rate <i class="fa fa-arrow-circle-right"></i></button>

               </form>
             </div> -->



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
  <form method="POST" action="{{ route('posts.post') }}" aria-label="{{ __('Comment') }}">
      @csrf
  <div class="box-footer">
         <div class="stars">
    <input  class="star star-5" id="star-5" type="radio" value="5" name="star"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" value="4" name="star"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" value="3" name="star"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" value="2" name="star"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" value="1" name="star"/>
    <label class="star star-1" for="star-1"></label>
  </div>
      <div class="input-group">
                <input class="form-control" type="hidden" name="topic_id" value="{{$pages->topic_id}}" placeholder="">
        <input class="form-control" type="hidden" name="id" value="{{$pages->id}}" placeholder="">
        <input type="text" class="form-control" name="message" placeholder="Type message...">
        @if ($errors->has('comment'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('comment') }}</strong>
            </span>
        @endif
        <div class="input-group-btn">

            <button type="submit" class="pull-right btnv btn-default" >Send <i class="fa fa-arrow-circle-right"></i></button>
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
