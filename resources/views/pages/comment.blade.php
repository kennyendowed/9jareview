@extends('layouts.site')

@section('title') Topic - @endsection

@section('content')



<section id="about" class="about-section ">
  <div class="container">
    <div class="row">

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">


        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Industries</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-10">

            @include('layouts.sidebar')



      </div>
            <div class="col-md-8">
<h1 class="mx-auto my-0 text-uppercase text-center">Naija - Reviews</h1>
<div class="col-md-6">
        @if (session('status'))

                      <div class="alert alert-success">
                          {{ session('status') }}
                      </div>
                  @endif
                  <!-- @if (count($errors) > 0)
                      @foreach ($errors->all() as $error)

                          <div class="alert alert-danger">{{ $error }}</div>

                      @endforeach

                  @endif
-->

        </div>

  <div class="card mb-4">
   <div class="card-body">
       @foreach($additional_info as $pages)

         <?php //$user = Auth::user();  ?
  $rc=App\sub_industries::where('sub_ind_id', '=', $pages->sub_in_id)->get();
  foreach ($rc as $rclue) { 
    ?>
       <h1 class="card-title pos h">{{$rclue->name}}  </h1>
                    <p class="pos"> {{$pages->location}} / {{$pages->city}} / {{$pages->state}}

            </p>
            <p class="pull-right"> @php $rating = $pages->averageRating; @endphp

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
            @endforeach</p>
                     <?php  } ?>
              @endforeach

     <ul class="feed-elements list-unstyled">
     <!--   <form id="data_value"> -->

       <!-- List-->
 <div class="newWrapper">
  <div id="form_sub_container1" style="display: block;">
  @foreach($comments as $comment)
  {{$found = false}}
    <div class="person1" style="float:left; display:inline-block; ">
        <span style="float:left;width: 20%;">
          <?php //$user = Auth::user();  ?
 $c=App\User::where('id', '=', $comment->user_id)->get();
foreach ($c as $lue) {
   # code...


          if(!empty($lue->avatar)){?>
        <img class="img-fluid2 rounded-circle" src="{{ $lue->avatar }}" />
      <?php }else{?>
             <img class="img-fluid2 rounded-circle" src="{{URL::asset('img/default_ava.gif ') }}" />
   <?php   }  ?>
          <small class="text-center"><br>
            <cite title="Source Title">  </cite> {{$lue->name}} </small>
          <br><br>
        </span>
        <span style="float:right;width: 80%;">
          <h4><small>{{$comment->title}} </small> </h4>  <small class="pull-right">{{ Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $comment->created_at)->toDayDateTimeString() }}</small>
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
    <p style="float:right; display:block;">@emojione($comment->message) <br> <br>
      
      <?php 
if(!$comment->reply==false){?>
      @foreach ($comment->reply as  $value) {
        
       -update <small class='pu'> {{Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $value->created_at)->toDayDateTimeString()}}</small> <br>@emojione($value->message)<br><br>
 @endforeach
   <?php }
    else{

    }?>
  
        <br>  <br>
      <small class="">
      

   <?php
    foreach($like as $likes){
     if($likes->post_id == $comment->id) {
       echo $likes->num; $found = true;}
     }
       if(!$found){echo 0;} $i++;
   ?> people found this helpful

 |   <a href="#" class="like" id="{{$comment->id}}">
 @auth   {{

    Auth::user()->likes()->where('post_id', $comment->id)->first() ?
    Auth::user()->likes()->where('post_id', $comment->id)->first()->likes_count == 1 ?
                  'You like this post' : 'Like' : 'Like'


   }}   @endauth
   @unless (Auth::check())
Login to lke comment....
   @endunless
 </a>

                     <!--    <a href="#" class="like" id="{{$comment->id}}">
                          @auth    {{

                          Auth::user()->likes()->where('post_id', $comment->id)->first() ?
                           Auth::user()->likes()->where('post_id', $comment->id)->first()->likes_count == 0 ?
                                    'You don\'t like this post' : 'Dislike' : 'Dislike'

                          }}    @endauth
                        </a> -->
                          @auth

                        @if(Auth::user()->id == $comment->user_id)
                            |

                            <a id="formButton" href="{{ route('update',['id'=>$comment->id]) }}">update</a>
                        @endif

 @endauth

                   </small>
                     </p> 

        </span>
    </div>
  <!--   <div class="person2" style="float:left" display:inline-block;>
    <img src=simonwilliams.jpg width="auto" height"auto"/>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer arcu mauris, ullamcorper et ligula vitae, hendrerit sodales tellus. Maecenas quis pulvinar lacus.</p>
    </div> -->

<?php  }  ?>

       <!-- List-->
     @endforeach

</div>
             

       </div>
     <!--     </form> -->
     </ul>
  <hr /><br><br><br>

  </div>



 <form method="POST" action="{{ route('savecomment') }}" aria-label="{{ __('Comment') }}">
      @csrf
  <div class="box-footer">
     <!--    <div class="form-group row">
                                    <label for="name" class="col-md-2 col-form-label text-md-right">Title</label>


                                       @if ($errors->has('country'))
                                             <span class="alert alert-danger">
                                                   <strong>{{ $errors->first('country') }}</strong>
                                               </span>
                                           @endif
                          </div> -->
         <div class="stars" >
    <input   class="star star-5 form-control{{ $errors->has('star') ? ' is-invalid' : '' }}"  id="star-5" type="radio" value="5" name="star"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" value="4" name="star"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" value="3" name="star"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" value="2" name="star"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" value="1" name="star" />
    <label class="star star-1" for="star-1"></label>
@if ($errors->has('star'))
                                             <span class="alert alert-danger">
                                                <strong>{{ $errors->first('star') }}</strong>
                                            </span>
                                        @endif 
  </div>
   <div class="col-md-8">
                                           <input id="title" type="text" placeholder="Title" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" name="title" value="{{ old('title') }}"  autofocus>
                                       </div>
      <div class="input-group">

              <input class="form-control" type="hidden" name="topicid" value="{{$pages->topic_id}}" placeholder="">
        <input class="form-control" type="hidden" name="id" value="{{$pages->id}}" placeholder="">
        <input type="text" class="form-control{{ $errors->has('message') ? ' is-invalid' : '' }}" name="message" data-emojiable="true" data-emoji-input="unicode" placeholder="Type message..." >
       
            </div>
        <div class="input-group-btn">

            <button type="submit" class="pull-right btnv btn-default" >Send <i class="fa fa-arrow-circle-right"></i></button>
        </div>
  

                </div><!-- /.box (chat box) -->
  </form>



  </div>

 
</div>
  </div>
</section>


@endsection

  @section ('footer')

  <script type="text/javascript">
  
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
        var token = '{{ Session::token() }}';
        var urlLike = '{{ route('like') }}';


        var updateChirpStats = {
            Like: function (chirpId) {
                document.querySelector('#likes-count-' + chirpId).textContent++;
            },

            Unlike: function(chirpId) {
                document.querySelector('#likes-count-' + chirpId).textContent--;
            }
        };


        var toggleButtonText = {
            Like: function(button) {
                button.textContent = "Unlike";
            },

            Unlike: function(button) {
                button.textContent = "Like";
            }
        };

        var actOnChirp = function (event) {
            var chirpId = event.target.dataset.chirpId;
            var action = event.target.textContent;
            toggleButtonText[action](event.target);
            updateChirpStats[action](chirpId);
            axios.post('/chirps/' + chirpId + '/act',
                { action: action });
        };

   


</script>

@endsection
