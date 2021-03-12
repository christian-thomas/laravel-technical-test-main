@extends("layouts.app")

@section("content")

        <div class="starter-template">
            <h1>FHRS API</h1>
            <p class="lead">GET Regions/{pageNumber}/{pageSize} -
                https://api.ratings.food.gov.uk/Help/Api/GET-Regions-pageNumber-pageSize </p>
            <a href="{{route('fhrs_get_data')}}" class="btn btn-primary">
                Get Data
            </a>
        </div>

        <hr>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">BusinessTypeId</th>
                <th scope="col">BusinessTypeName</th>
            </tr>
            </thead>
            <tbody>

            @if($items->count() != 0)
                @foreach($items as $r)
                    <tr>
                        <th scope="row">{{$r->id}}</th>
                        <td>{{$r->business_id}}</td>
                        <td>{{$r->business_name}}</td>
                    </tr>
                @endforeach
            @endif

            </tbody>
        </table>

        {{$items->render()}}


@endsection
