@yield('sidebar')

     @foreach($items as $page)
 <ul class="list-unstyled mb-0">
         <li>
      <a href="#Dropdown_{{$page->id}}" aria-expanded="true" data-toggle="collapse" class=""> <i class="icon-interface-windows"></i>{{$page->name}}</a>
                <span class="caret"></span>
  @foreach($subitems as $spage)
           <ul id="Dropdown_{{$page->id}}" class="list-unstyled collapse" style="">

                        @if($spage->ind_id == $page->ind_id)
                         <li><a href="{{ route('topic', ['name'=>$spage->name,'id'=>$spage->sub_ind_id] ) }}">{{$spage->name}}</a></li> 
                      @endif
           </ul>
  @endforeach
         </li>
  </ul>
     @endforeach
</div>
</div>
</div>
</div>

<div class="col-md-4">
<a href="{{ route('create_topic' ) }}" class="btn btn-info btn-sm btn-rounded pull-right" >
     <i class="fa fa-pencil fa-1x"></i>Create Topic</a>
</div>
