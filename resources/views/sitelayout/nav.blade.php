<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
  <div class="container">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">9ja - Voice</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      Menu
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        @guest
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger"  href="{{ url('/') }}">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#about">Reviews</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/profile">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#scontact">Contact</a>
        </li>

        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="{{ route('login') }}">Login</a>
            </li>
          <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="{{ route('register') }}">Register</a>
            </li>
    @else

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger"  href="{{ url('/') }}">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Reviews</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/profile">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#scontact">Contact</a>
          </li>

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="{{ route('logout') }}">{{ __('Logout') }}</a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
          </li>

            @endguest




      </ul>
    </div>
  </div>
</nav>

<!-- Header -->
<header class="masthead">
  <div class="container d-flex h-100 align-items-center">
    <div class="mx-auto text-center">
      <h1 class="mx-auto my-0 text-uppercase">9ja - Voice</h1>
      <h2 class="text-white-50 mx-auto mt-2 mb-5">9ja Voice - giving you the news the mainstream won't broadcast. Your view and opinion matter.</h2>
      <a href="#about" class="btn btn-primary js-scroll-trigger">Get Started</a>
    </div>
  </div>
</header>
