<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>
    @yield('title', 'Medico')
    
  </title>
  <meta name="csrf-token" content="{{ csrf_token() }}">
  @include('frontend.partials.styles')
  <link rel="shortcut icon" href="images/logo.png" />
</head>
<body>

  <div class="wrapper">

    @include('frontend.partials.nav')
    @include('frontend.partials.messages')
    @yield('content')
    @include('frontend.partials.footer')

  </div>


  @include('frontend.partials.scripts')
  @yield('scripts')
  </body>
</html>
