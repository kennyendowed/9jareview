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
                           <h5 class="card-header">Categories</h5>
                           <div class="card-body">
                             <div class="row">
                               <div class="col-lg-6">

                             @include('layouts.sidebar')
                             </div>
                             </div>
                           </div>
                         </div>



                       </div>

                       <!-- Blog Post -->
                       <div class="col-md-8">

                           @if(count($additional_info) > 0)
                             @foreach($additional_info as $pages)
                           <!-- Blog Post -->
                 <div class="card mb-4">
                   <div class="card-body">
                     <h2 class="card-title">{{$pages->name}} </h2>
                     <p class="card-text">{{html_entity_decode(str_limit($pages->description, 100)) }}</p>
                     <a href="{{route('comment',$pages->name)}}" class="btn btn-primary">Read More &rarr;</a>
                   </div>
                   <div class="card-footer text-muted">
                     Posted on  {{$pages->created_at->format('d/m/Y') }}  by 	{{$pages->created_by}}
                     </div>
                 </div>
                @endforeach
                @else
                     {{$additional_info}}  data found
                @endif
             </div>

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
