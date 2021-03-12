@extends("layouts.app")

@section("content")

    <div class="starter-template">
        <h1>Region Form</h1>
        <form class="" method="POST" action="{{route('search')}}">
            {{csrf_field()}}
            <div class="form-group">
                <input class="form-control" placeholder="City - manchester" value="manchester" name="city">
            </div>
            <button class="btn btn-success" type="submit">
                Search
            </button>
        </form>
    </div>

    @if($details)
        <hr>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">{{$details->title}}</h5>
                <p class="card-text">{{$details->timezone}}</p>
                <p class="card-text">{{$details->latt_long}}</p>
                <p class="card-text">{{$details->time}}</p>
                <p class="card-text">{{$details->sun_rise}}</p>
                <p class="card-text">{{$details->sun_set}}</p>
            </div>
        </div>
    @endif

@endsection
