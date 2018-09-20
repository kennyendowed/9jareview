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

                             <!-- <div class="row">
                               <div class="col-lg-6"> -->
                             <ul class="list-unstyled mb-0">
                                  @foreach($items as $page)

                   <li><a href="#exampledropdownDropdown_{{$page->name}}" aria-expanded="true" data-toggle="collapse" class=""> <i class="icon-interface-windows"></i>{{$page->name}}</a>
                            <span class="caret"></span></a>
                                <ul id="exampledropdownDropdown_{{$page->name}}" class="list-unstyled collapse" style="">
                                   @foreach($subitems as $spage)
                                   @if($spage->ind_id == $page->ind_id)
                        <li><a href="{{route('topic',$spage->name)}}">{{$spage->name}}</a>
                                 <form method="POST" action="{{route('topic',$spage->sub_ind_id)}}">
                                      <input type="hidden" value="{{$spage->sub_ind_id}}" name="id" />
         @csrf
                                 </form>
                        </li>
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
                       <!-- Blog Post -->
                       <div class="card mb-4">
                         <div class="card-body">
                           <h2 class="card-title">ajah Branch</h2>
                           <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                           <a href="#" class="btn btn-primary">Read More &rarr;</a>
                         </div>
                         <div class="card-footer text-muted">
                           Posted on January 1, 2017 by
                           <a href="#">Start Bootstrap</a>
                         </div>
                       </div>

                       <div class="card mb-4">
                         <div class="card-body">
                           <h2 class="card-title">Zone Branch</h2>
                           <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                           <a href="#" class="btn btn-primary">Read More &rarr;</a>
                         </div>
                         <div class="card-footer text-muted">
                           Posted on January 1, 2017 by
                           <a href="#">Start Bootstrap</a>
                         </div>
                       </div>      <div class="card mb-4">
                               <div class="card-body">
                                 <h2 class="card-title">Mile50 Branch</h2>
                                 <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                                 <a href="#" class="btn btn-primary">Read More &rarr;</a>
                               </div>
                               <div class="card-footer text-muted">
                                 Posted on January 1, 2017 by
                                 <a href="#">Start Bootstrap</a>
                               </div>
                             </div>
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
