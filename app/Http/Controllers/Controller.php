<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests;
    use DispatchesJobs;
    use ValidatesRequests;

    public function curl($url){
        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $url);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec($handle);
        curl_close($handle);
        $ec = json_decode($output);
        return $ec;
    }

    public static function successjson($msg, $status = 200)
    {
        return response()->json(['status' => 'success', 'errors' => 0, 'data' => $msg], $status)
            ->header('Content-type', 'application/json');
    }

    public static function errorjson($msg, $status = 400)
    {
        $msgCount = 1;
        if (is_array($msg)) {
            $msgCount = sizeof($msgCount);
        } else if ($msg instanceof Collection) {
            $msgCount = $msg->count();
        }
        /*
        if($msg instanceof MessageBag){
            $msg = $msg->first();
        }*/
        return response()->json(['status' => 'error', 'errors' => $msgCount, 'data' => $msg], $status)
            ->header('Content-type', 'application/json');
    }

}
