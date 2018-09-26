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
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-10">

            @include('layouts.sidebar')



      </div>
            <div class="col-md-8">
<h1 class="mx-auto my-0 text-uppercase text-center">Naija - Reviews</h1>
<div class="col-lg-10 col-lg-offset-2">
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

  <div class="card mb-4">
   <div class="card-body">
       @foreach($additional_info as $pages)
       <h1 class="card-title pos">{{$topicname->name}}</h1>
                    <p class="pos"> {{$pages->location}} / {{$pages->city}} / {{$pages->state}}</p>
      
       <div class="newWrapper">
    <div class="person1" style="float:left; display:inline-block; "> 
        <span style="float:left;width: 20%;">
          <img src="{{url('img/profile/user2-160x160.jpg')}}" alt="person" class="img-fluid2 rounded-circle"><small class="text-center"> <br> <cite title="Source Title"> {{$post->user->name}}   </cite>  </small></span>
        <span style="float:right;width: 80%;">                               
          <h4><small>{{$pages->topic_name}}</small> </h4>  <small class="pull-right">{{ Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $pages->created_at)->toDayDateTimeString() }}</small>
        @php $rating = $pages->averageRating; @endphp  

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
    <p style="float:right; display:block;">{{html_entity_decode($pages->description) }} <br><small class="pull-right">{{ Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $pages->created_at)->toDayDateTimeString() }}</small>  </p>
        </span>
    </div>
  <!--   <div class="person2" style="float:left" display:inline-block;>
    <img src=simonwilliams.jpg width="auto" height"auto"/>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer arcu mauris, ullamcorper et ligula vitae, hendrerit sodales tellus. Maecenas quis pulvinar lacus.</p>
    </div> -->
    </div>              
        @endforeach
      <hr />
     <ul class="feed-elements list-unstyled">
@foreach($comment as $comment)

       <!-- List-->
 <div class="newWrapper">
    <div class="person1" style="float:left; display:inline-block; ">
        <span style="float:left;width: 20%;">
          <img src="{{url('img/profile/user2-160x160.jpg')}}" alt="person" class="img-fluid2 rounded-circle">
          <small class="text-center"><br>   
            <cite title="Source Title">  {{$post->user->name}}  </cite>  </small>
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
    <p style="float:right; display:block;">{{$comment->message}} <br> <small class="pull-right">      
    
  <a href="#" class="like">
    {{ 
    Auth::user()->likes()->where('post_id', $comment->id)->first() ? 
    Auth::user()->likes()->where('post_id', $comment->id)->first()->likes_count == 1 ? 
                  'You like this post' : 'Like' : 'Like' 
   }}
 </a> |

                        <a href="#" class="like">
                          {{ 
                          Auth::user()->likes()->where('post_id', $comment->id)->first() ?
                           Auth::user()->likes()->where('post_id', $comment->id)->first()->likes_count == 0 ? 
                                    'You don\'t like this post' : 'Dislike' : 'Dislike'  
                                  }}
                        </a>

                        @if(Auth::user()->id == $comment->user_id)
                            |
                      
                            <a href="{{ route('update', ['post_id' => $comment->id]) }}">update</a>
                        @endif


                      
                   </small> </p>
        </span>
    </div>
  <!--   <div class="person2" style="float:left" display:inline-block;>
    <img src=simonwilliams.jpg width="auto" height"auto"/>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer arcu mauris, ullamcorper et ligula vitae, hendrerit sodales tellus. Maecenas quis pulvinar lacus.</p>
    </div> -->
    </div>

    
       <!-- List-->
     @endforeach
     </ul>
  <hr /><br>
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
   <div class="col-md-8">
                                           <input id="title" type="text" placeholder="Title" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" name="title" value="{{ old('title') }}" autofocus>
                                       </div>
      <div class="input-group">

              <input class="form-control" type="hidden" name="topicid" value="{{$pages->topic_id}}" placeholder="">
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
