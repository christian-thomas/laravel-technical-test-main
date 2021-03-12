<!doctype html>
<html lang="en">
<head>
    @include("layouts.css")
    @yield("css")
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="{{route('index_home')}}">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('fhrs')}}">FHRS API</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('region')}}">Get Region</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('ordering')}}">Ordering</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('api')}}">API Mobile</a>
            </li>
        </ul>
    </div>
</nav>

<main role="main" class="main container">
    @include("layouts.msg")
    @yield("content")
</main><!-- /.container -->


@include("layouts.js")
@yield("js")

</body>
</html>
