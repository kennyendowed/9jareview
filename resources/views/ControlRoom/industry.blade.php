@extends('layouts.site')

@section('title') -Industry  @endsection

@section('content')
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Create Industries</div>
                            <div class="col-lg-10 col-lg-offset-2">
                                    @if (session('status'))

                                                  <div class="alert alert-success">
                                                      {{ session('status') }}
                                                  </div>
                                              @endif
                                              @if (count($errors) > 0)
                                                  @foreach ($errors->all() as $error)

                                                      <div class="alert alert-danger">{{ $error }}</div>

                                                  @endforeach

                                              @endif


                                    </div>
                            <div class="card-body">
                               <form id="send-announcement-form" role="form"  method="POST" action="{{route('store_industry')}}">
                                    @csrf
                                    <div id="cat_fields">

                                   </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

                                        <div class="col-md-6">
                                            <input id="catname[]" type="text" placeholder="Enter Industries Name...." class="form-control{{ $errors->has('catname') ? ' is-invalid' : '' }}" name="catname[]" value="{{ old('catname') }}" required autofocus>

                                            @if ($errors->has('catname'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('catname') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="input-group-btn">
                                    <button class="btn btn-success" type="button"  onclick="cat_fields();"> <span class="icon-plus-sign" aria-hidden="true"></span>Add More  </button>
                                    </div>
                                    <div class="form-group row mb-0">
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">
                                                Save
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


  @endsection


  @section ('footer')
  <script >

  var room = 1;
function cat_fields() {

 room++;
 var objTo = document.getElementById('cat_fields')
 var divtest = document.createElement("div");
divtest.setAttribute("class", "form-group removeclass"+room);
var rdiv = 'removeclass'+room;
 divtest.innerHTML = ' <div class="form-group row"> <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>     <div class="col-md-6"> <input type="text" class="form-control" id="catname[]" name="catname[]" value="" placeholder="Enter Industries Name....">    </div> </div><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_cat_fields('+ room +');"> <span class="icon-minus-sign" aria-hidden="true"></span>Remove </button></div></div></div></div><div class="clear"></div>';

 objTo.appendChild(divtest)
}
function remove_cat_fields(rid) {
  $('.removeclass'+rid).remove();
}
</script>

@endsection
