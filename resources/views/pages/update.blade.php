@extends('layouts.site')

@section('title') Create-Topic  @endsection

@section('content')
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Update Topic</div>
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
                               <form id="" role="form"  method="POST" action="{{route('save_new_reply_comment')}}">
                                    @csrf
                                       <div class="form-group  row">

                                            <input id="comment_id" type="hidden" placeholder="city" class="form-control{{ $errors->has('comment_id') ? ' is-invalid' : '' }}" name="comment_id" value="{{request()->route('id')}}" autofocus>
                                                 <textarea placeholder="Review Description" name="message" data-emojiable="true" data-emoji-input="unicode" rows="10" class="form-control{{ $errors->has('message') ? ' is-invalid' : '' }}"></textarea>
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


  @endsection


  @section ('footer')


@endsection
