@yield('sidebar')
<ul class="list-unstyled mb-0">
  <form method="POST" action="{{route('topic')}}">
     @foreach($items as $page)
    <ul class="list-unstyled mb-0">
<li><a href="#Dropdown_{{$page->name}}" aria-expanded="true" data-toggle="collapse" class=""> <i class="icon-interface-windows"></i>{{$page->name}}</a>
<span class="caret"></span></a>
  @foreach($subitems as $spage)
      <ul id="Dropdown_{{$page->name}}" class="list-unstyled collapse" style="">

      @if($spage->ind_id == $page->ind_id)
<li><a href="{{ route('topic', ['name'=>$spage->name,'id'=>$spage->sub_ind_id] ) }}">{{$spage->name}}</a>

         <input type="hidden" value="{{$spage->sub_ind_id}}" name="id" />
@csrf

</li>
    @endif
           </ul>
       @endforeach
     </ul>
     @endforeach
     </form>
  </ul>
