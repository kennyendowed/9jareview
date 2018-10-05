@include('sitelayout.header')


            @include('sitelayout.nav')

                              <div class="content-wrapper">
                                <!-- Main content -->
                                     <section class="content">

                                   @yield('content')
                                   <!-- About Section -->
                 <section id="about" class="about-section text-center">
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
                       
                       <!-- Blog Post -->
                       <div class="col-md-8">

                           @if(count($additional_info) > 0)
                             @foreach($additional_info as $pages)
                              <?php //$user = Auth::user();  ?
 $c=App\User::where('id', '=', $pages->created_by)->get();
  $rc=App\sub_industries::where('sub_ind_id', '=', $pages->sub_in_id)->get();
foreach ($c as $lue) { 
  foreach ($rc as $rclue) { 
    ?>
                           <!-- Blog Post -->
                 <div class="card mb-4">
                   <div class="card-body">
                     <h1 class="card-title pos">{{$rclue->name}}  @php $rating = $pages->averageRating; @endphp

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
            @endforeach</h1>
                    <p class="pos"> {{$pages->location}} / {{$pages->city}} / {{$pages->state}} /</p>
                      <h2 class="card-title pos">{{$pages->topic_name}}</h2>
                      <p class="card-text">{{html_entity_decode(str_limit($pages->description, 100)) }}</p>
                     <a href="{{route('comment',['name'=>$pages->location,'id'=>$pages->topic_id])}}" class="btn btn-primary">Read More &rarr;</a>
                   </div>
                   <div class="card-footer text-muted">
                     Posted on  {{$pages->created_at->diffForHumans() }}  by 	{{$lue->name}}
                     </div>









                 </div>
                 <?php  } } ?>
                @endforeach
                @else
                     {{$additional_info}}  data found
                @endif
             </div>
             {{  $additional_info->links() }}

                 </div>
                   </div>
                 </section>

              <!-- <section id="profile" class="signup-section">
              </section> -->
                                     @yield('footer')
                                  </section>
                           </div>
                      <br>

            @include('sitelayout.footer')

@include('sitelayout.footerscript')




 