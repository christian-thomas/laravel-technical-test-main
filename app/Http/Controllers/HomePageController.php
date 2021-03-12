<?php

namespace App\Http\Controllers;

use App\Models\Business;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class HomePageController extends Controller
{
    public function index_home(){
        return view('welcome');
    }

    public function api(){
        return view('api');
    }

    public function ordering (){
        return view('ordering ');
    }

    /*
     AJAX request
     */
    public function getordering(Request $request){

        ## Read value
        $draw = $request->get('draw');
        $start = $request->get("start");
        $rowperpage = $request->get("length"); // Rows display per page

        $columnIndex_arr = $request->get('order');
        $columnName_arr = $request->get('columns');
        $order_arr = $request->get('order');
        $search_arr = $request->get('search');

        $columnIndex = $columnIndex_arr[0]['column']; // Column index
        $columnName = $columnName_arr[$columnIndex]['data']; // Column name
        $columnSortOrder = $order_arr[0]['dir']; // asc or desc
        $searchValue = $search_arr['value']; // Search value

        // Total records
        $totalRecords = Business::select('count(*) as allcount')->count();
        $totalRecordswithFilter = Business::select('count(*) as allcount')->where('business_name', 'like', '%' .$searchValue . '%')->count();

        // Fetch records
        $records = Business::orderBy($columnName,$columnSortOrder)
            ->where('business.business_name', 'like', '%' .$searchValue . '%')
            ->select('business.*')
            ->skip($start)
            ->take($rowperpage)
            ->get();

        $data_arr = array();

        foreach($records as $record){
            $id = $record->id;
            $business_name = $record->business_name;
            $business_id = $record->business_id;

            $data_arr[] = array(
                "id" => $id,
                "business_name" => $business_name,
                "business_id" => $business_id
            );
        }

        $response = array(
            "draw" => intval($draw),
            "iTotalRecords" => $totalRecords,
            "iTotalDisplayRecords" => $totalRecordswithFilter,
            "aaData" => $data_arr
        );

        echo json_encode($response);
        exit;
    }

    public function region(){
        $details = null;
        return view('region',compact('details'));
    }

    public function search(Request $request){
        $validator = Validator::make($request->all(),[
            'city' => 'required'
        ]);
        if($validator->fails()){
            return redirect()->back()->withInput()->withErrors($validator);
        }
        else{
            $city = parent::curl("https://www.metaweather.com/api/location/search/?query=".$request->city);
            if($city == null){
                return redirect()->route('region')->with("error","Error - No City name");
            }
            $woeid = $city[0]->woeid;
            $details = parent::curl("https://www.metaweather.com/api/location/".$woeid."/");
            return view('region',compact('details'));
        }
    }

    public function fhrs(){
        $items = Business::orderby("id","desc")->paginate(10);
        return view('fhrs',compact('items'));
    }

    public function fhrs_get_data(){
        $url = "https://ratings.food.gov.uk/business-types/xml";
        $items = simplexml_load_file($url) or die("Failed to load");
        //dd($items->WebBusinessTypeAPI[1]);
        foreach ($items as $item){
            $BusinessTypeName = $item->BusinessTypeName;
            $BusinessTypeId = $item->BusinessTypeId;
            $save_record = new Business();
            $save_record->business_id = $BusinessTypeId;
            $save_record->business_name = $BusinessTypeName;
            $save_record->save();
        }
        return redirect()->route('fhrs')->with("success","Import Successfully");
    }

}
