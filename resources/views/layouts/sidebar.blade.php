@yield('sidebar')
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->


   
 <ul class="list-unstyled mb-0">
     @foreach($items as $page)
           <li>
      <a href="#Dropdown_{{$page->sub_ind_id}}" aria-expanded="true" data-toggle="collapse" class=""> <i class="icon-interface-windows"></i>{{$page->name}}</a>
                <span class="caret"></span>
  @foreach($subitems as $spage)
           <ul id="Dropdown_{{$page->sub_ind_id}}" class="list-unstyled collapse" style="">

                        @if($spage->ind_id == $page->ind_id)
                         <li><a href="{{ route('topic', ['name'=>$spage->name,'id'=>$spage->sub_ind_id] ) }}">{{$spage->name}}</a></li> 
                      @endif
           </ul>
  @endforeach
         </li>
            @endforeach
  </ul>
  
</div>
</div>
</div>
</div>

<div class="col-md-4">
<a href="{{ route('create_topic' ) }}" class="btn btn-info btn-sm btn-rounded pull-right" >
     <i class="fa fa-pencil fa-1x"></i>Create Topic</a>
</div>
