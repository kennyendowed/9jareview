@extends('layouts.site')

@section('title') Update Profile @endsection

@section('content')
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Update Profile</div>
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
                            
                            	            <div class="profile-header-container">
                <div class="profile-header-img">
                        <?php //$user = Auth::user();  
          if(!empty($r->avatar)){?>
         <img class="img-fluid2 rounded-circle" src="{{ $r->avatar }}" />
      <?php }else{?>
             <img class="img-fluid2 rounded-circle" src="{{URL::asset('img/default_ava.gif ') }}" />
   <?php   }  ?>
                  
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">{{$r->name}}</span>
                    </div>
                </div>
            </div>
        

                            	  <form method="POST" action="{{ route('Update_profile') }}" enctype="multipart/form-data" aria-label="{{ __('Update Profile') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value=" {{ $r->name}}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Username') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('username') ? ' is-invalid' : '' }}" name="username" value="{{ $r->username}}" required autofocus>

                                @if ($errors->has('username'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('username') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="phone" value="{{ $r->phone}}" required autofocus>

                                @if ($errors->has('phone'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('phone') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value=" {{ $r->email}}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                          <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Profile Image (only .jpg)') }}</label>
                          <div class="col-md-6">
                    <input type="file" name="image"  class="form-control" id="image" aria-describedby="fileHelp">
                     <small id="fileHelp" class="form-text text-muted">Please upload a valid image file. Size of image should not be more than 2MB.</small>
                </div>
                       </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Update Profile') }}
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
