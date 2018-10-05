@extends('layouts.site')

@section('title') Create-Topic  @endsection

@section('content')
   <section id="about" class="about-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Create Topic</div>
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
                            <div class="card-body">
                               <form id="" role="form"  method="POST" action="{{route('save_new_topic')}}">
                                    @csrf
                          <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">Industries</label>

                                    <div class="col-md-6">
                                           <select name="country" class="form-control{{ $errors->has('country') ? ' is-invalid' : '' }}">
                                               <option value="">--Select Industries--</option>
                                               @foreach ($items as  $value)
                                               <option value="{{ $value->ind_id }}"> {{ $value->name }}</option>
                                               @endforeach
                                           </select>
                                       </div>
                                       <!-- @if ($errors->has('country'))
                                             <span class="alert alert-danger">
                                                   <strong>{{ $errors->first('country') }}</strong>
                                               </span>
                                           @endif -->
                          </div>
                          <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">Companies</label>
                                     <div class="col-md-4">
                                           <select name="state" class="form-control{{ $errors->has('state') ? ' is-invalid' : '' }}">
                                            <option>--Sub--</option>

                                        </select>
                                          </div>
                                            <div class="col-md-3">
                                     <a href="{{ route('create_company' ) }}" >Create New Company.. <i class="fa fa-pencil fa-1x"></i></a>


                                      </div>
                                  
                                    <!-- @if ($errors->has('state'))
                                       <span class="alert alert-danger">
                                              <strong>{{ $errors->first('state') }}</strong>
                                          </span>
                                      @endif -->
                          </div>



                                        <div class="form-group row">
                                            <label for="name" class="col-md-2 col-form-label text-md-right"></label>
                                          <div class="col-md-3">
                                            <input id="location" type="text" placeholder="location" class="form-control{{ $errors->has('location') ? ' is-invalid' : '' }}" name="location" value="{{ old('location') }}" autofocus>


                                        </div>
                                        <!-- @if ($errors->has('location'))
                                             <span class="alert alert-danger">
                                                <strong>{{ $errors->first('location') }}</strong>
                                            </span>
                                        @endif -->

                                          <div class="col-md-3">
                                            <input id="city" type="text" placeholder="city" class="form-control{{ $errors->has('city') ? ' is-invalid' : '' }}" name="city" value="{{ old('city') }}" autofocus>


                                        </div>
                                        <!-- @if ($errors->has('city'))
                                             <span class="alert alert-danger">
                                                <strong>{{ $errors->first('city') }}</strong>
                                            </span>
                                        @endif -->
                                        <div class="col-md-3">
                                          <input id="state2" type="text" placeholder="state" class="form-control{{ $errors->has('state2') ? ' is-invalid' : '' }}" name="state2" value="{{ old('state2') }}" autofocus>


                                      </div>
                                      <!-- @if ($errors->has('state2'))
                                           <span class="alert alert-danger">
                                              <strong>{{ $errors->first('state2') }}</strong>
                                          </span>
                                      @endif -->

                                    </div>
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
                                    <div class="form-group row">
                                    <label for="name" class="col-md-2 col-form-label text-md-right">Title</label>

                                    <div class="col-md-6">
                                           <input id="title" type="text" placeholder="Title" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" name="title" value="{{ old('title') }}" autofocus>
                                       </div>
                                       <!-- @if ($errors->has('country'))
                                             <span class="alert alert-danger">
                                                   <strong>{{ $errors->first('country') }}</strong>
                                               </span>
                                           @endif -->
                          </div>
                                    <div class="form-group  row">


                                                 <textarea placeholder="Review Description" name="message"  rows="10" class="form-control{{ $errors->has('message') ? ' is-invalid' : '' }}"></textarea>
                                            <!-- @if ($errors->has('message'))
                                             <span class="alert alert-danger">
                                                 <strong>{{ $errors->first('message') }}</strong>
                                             </span>
                                         @endif  -->
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


@endsection
