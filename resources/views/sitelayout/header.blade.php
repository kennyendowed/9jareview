    <!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   
 <title>@yield('title') - {{config('app.name')}}</title>
    <meta name="description" content="Giving you the news the mainstream won't broadcast. Your view and opinion matter Let's spaekle your day by lisiting">
     <meta name="Author" content="Naija - Reviews">
<meta name="keywords" content="Naija,Reviews,NaijaReviews" />
<meta name="author" content="metatags generator">
<meta name="robots" content="index, follow">
<meta name="revisit-after" content="3 days">
          <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Bootstrap core CSS -->
    <link href="{{URL::asset('public/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <!-- Begin emoji-picker Stylesheets -->

    <!-- End emoji-picker Stylesheets -->
    <!-- Custom fonts for this template -->
    <link href="{{URL::asset('public/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
      @if (Route::currentRouteName() == ('comment')  || Route::currentRouteName() == ('create_topic') )
          <link href="{{URL::asset('public/lib/css/emoji.css')}}" rel="stylesheet">
<link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  @endif
    <!-- Custom styles for this template -->
    <link href="{{URL::asset('css/grayscale.css')}}" rel="stylesheet">
        <link href="{{URL::asset('css/style.css')}}" rel="stylesheet">
<script src="{{ asset('js2/app.js') }}" defer></script>
  </head>

  <body id="page-top">
