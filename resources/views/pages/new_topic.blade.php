@extends('layouts.site')

@section('title') Create-Topic  @endsection

@section('content')
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
                                           <select name="country" class="form-control">
                                               <option value="">--Select Industries--</option>
                                               @foreach ($items as  $value)
                                               <option value="{{ $value->ind_id }}"> {{ $value->name }}</option>
                                               @endforeach
                                           </select>
                                       </div>
                                       @if ($errors->has('country'))
                                             <span class="alert alert-danger">
                                                   <strong>{{ $errors->first('country') }}</strong>
                                               </span>
                                           @endif
                          </div>
                          <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">Sub Industries</label>
                                     <div class="col-md-4">
                                           <select name="state" class="form-control">
                                            <option>--Sub--</option>

                                        </select>

                                    </div>
                                    @if ($errors->has('state'))
                                       <span class="alert alert-danger">
                                              <strong>{{ $errors->first('state') }}</strong>
                                          </span>
                                      @endif
                          </div>



                                        <div class="form-group row">
                                        <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

                                        <div class="col-md-6">
                                            <input id="topicname" type="text" placeholder="Enter Topic Name...." class="form-control{{ $errors->has('catname') ? ' is-invalid' : '' }}" name="topicname" value="{{ old('catname') }}" autofocus>


                                        </div>
                                        @if ($errors->has('topicname'))
                                             <span class="alert alert-danger">
                                                <strong>{{ $errors->first('topicname') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group  row">


                                                 <textarea placeholder="Error Description" name="message" rows="10" class="form-control"></textarea>
                                            @if ($errors->has('message'))
                                             <span class="alert alert-danger">
                                                 <strong>{{ $errors->first('message') }}</strong>
                                             </span>
                                         @endif  </div>
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


@endsection
