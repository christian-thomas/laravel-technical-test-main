@extends("layouts.app")

@section("css")
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
@endsection

@section("content")

    <div class="starter-template">
        <h1>Ordering</h1>
        <hr>
        <table id='empTable' class="table table-bordered" width='100%' border="1" style='border-collapse: collapse;'>
            <thead>
            <tr>
                <td>#</td>
                <td>Business id</td>
                <td>Business name</td>
            </tr>
            </thead>
        </table>
    </div>


@endsection

@section("js")
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){

            // DataTable
            $('#empTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{route('getordering')}}",
                columns: [
                    { data: 'id' },
                    { data: 'business_id' },
                    { data: 'business_name' },
                ]
            });

        });
    </script>
@endsection
