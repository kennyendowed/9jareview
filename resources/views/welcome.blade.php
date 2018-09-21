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

                             <!-- <div class="row">
                               <div class="col-lg-6"> -->
                             <ul class="list-unstyled mb-0">
                               <form method="POST" action="{{route('topic')}}">
                                  @foreach($items as $page)
                                 <ul class="list-unstyled mb-0">
                   <li><a href="#Dropdown_{{$page->name}}" aria-expanded="true" data-toggle="collapse" class=""> <i class="icon-interface-windows"></i>{{$page->name}}</a>
                            <span class="caret"></span></a>
                               @foreach($subitems as $spage)
                                   <ul id="Dropdown_{{$page->name}}" class="list-unstyled collapse" style="">

                                   @if($spage->ind_id == $page->ind_id)
                        <li><a href="{{ route('topic',['name'=>$spage->name,'id'=>$spage->sub_ind_id]) }}">{{$spage->name}}</a>

                                      <input type="hidden" value="{{$spage->sub_ind_id}}" name="id" />
         @csrf

                        </li>
                                 @endif
                                        </ul>
                                    @endforeach

                                  @endforeach
                                  </form>
     </ul>


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
                     <a href="{{route('comment',['name'=>$pages->name,'id'=>$spage->sub_ind_id])}}" class="btn btn-primary">Read More &rarr;</a>
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
