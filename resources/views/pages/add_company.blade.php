@extends('layouts.site')

@section('title') Sub -Industry  @endsection

@section('content')
   <section id="about" class="about-section">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Create Company</div>
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
                   <form id="" role="form"  method="POST" action="{{route('store_sub_industry')}}">
                        @csrf
                        <div id="cat_fields">

                       </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

                            <div class="col-md-6">
                                <input id="subname[]" type="text" placeholder="Enter Sub  Industries Name...." class="form-control{{ $errors->has('subname') ? ' is-invalid' : '' }}" name="subname[]" value="{{ old('subname') }}" required autofocus>

                                @if ($errors->has('subname'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('subname') }}</strong>
                                    </span>
                                @endif
                            </div>
                              <div class="col-md-3">
                                     <a href="{{ route('create_topic') }}" >Create A Review.. <i class="fa fa-pencil fa-1x"></i></a>


                                      </div>
                        </div>
                        <div class="line"></div>
                  <div class="form-group row">
                    <label class="col-sm-2 form-control-label">Select Industries</label>
                    <div class="col-sm-10 mb-3">
                      <select class="form-control" id="industry" name="industry">
  <option value="" disabled selected>Choose your option</option>
                        <?php    if (isset($items)) {
                foreach($items as $dept){
       echo '<option value="'.$dept->ind_id.'">'.$dept->name.'</option>';
              }
                }


          else { ?>
              <div>No user(s) found.</div>
          <?php } ?>
                      </select>
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
    </section>

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
 divtest.innerHTML = ' <div class="form-group row"> <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>     <div class="col-md-6"> <input type="text" class="form-control" id="subname[]" name="subname[]" value="" placeholder="Enter Sub Industries Name....">    </div> </div><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_cat_fields('+ room +');"> <span class="icon-minus-sign" aria-hidden="true"></span>Remove </button></div></div></div></div><div class="clear"></div>';

 objTo.appendChild(divtest)
}
function remove_cat_fields(rid) {
  $('.removeclass'+rid).remove();
}
</script>

@endsection
