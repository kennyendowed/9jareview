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

            <!-- <div class="row">
              <div class="col-lg-6"> -->
            <ul class="list-unstyled mb-0">
                 @foreach($items as $page)

  <li><a href="#exampledropdownDropdown_{{$page->name}}" aria-expanded="true" data-toggle="collapse" class=""> <i class="icon-interface-windows"></i>{{$page->name}}</a>
           <span class="caret"></span></a>
               <ul id="exampledropdownDropdown_{{$page->name}}" class="list-unstyled collapse" style="">
                  @foreach($subitems as $spage)
                  @if($spage->ind_id == $page->ind_id)
                <li><a href="{{route('topic',$spage->name)}}">{{$spage->name}}</a></li>
                @endif
                   @endforeach
              </ul>
            </li>

                 @endforeach
</ul>

              <!-- </div>
            </div> -->
          </div>
        </div>


      </div>
            <div class="col-md-8">
<h1 class="mx-auto my-0 text-uppercase">9ja - Voice</h1>Comment
<div class="card mb-4">

  <div class="card mb-4">
   <div class="card-body">
       @foreach($additional_info as $pages)
     <h2 class="card-title">{{$pages->name}}</h2>
     <p class="card-text">{{html_entity_decode(str_limit($pages->description, 100)) }}</p>
     <!-- <a href="#" class="btn btn-primary">Read More &rarr;</a> -->
       @endforeach
      <hr />
     <ul class="feed-elements list-unstyled">
@foreach($comment as $comment)
       <!-- List-->
       <li class="">
         <div class="feed  justify-content-between">
           <div class="feed-body  justify-content-between comment"><a href="#" class="feed-profile"><img src="img/profile/user2-160x160.jpg" alt="person" class="img-fluid2 rounded-circle"></a>
             <div class="content"><strong>{{$comment->user_id}}</strong>
               <div class="full-date"><small>{{$comment->created_at->format('d/m/Y')}}</small></div>
             </div>
           </div>
           <!-- <div class="date"><small>5min ago</small></div> -->
         </div>
         <div class="message-card"> <small>{{$comment->message}}</small></div>
         <!-- <div class="CTAs pull-right"><a href="#" class="btn btn-xs btn-dark"><i class="fa fa-thumbs-up"> </i>Like</a></div> -->
       </li>
       <!-- List-->
     @endforeach
     </ul>
  <hr />

  </div>

  </div>

  </div>
</div>
  </div>
</section>


@endsection

  @section ('footer')
  <script >


</script>

@endsection
