<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class APIMeController extends Controller
{
    public function index()
    {
        try {
            $users = User::all();
            return response()->json(
                [
                    'data' => $users,
                    'message' => 'A list of all users'
                ],
                Response::HTTP_OK
            );
        } catch (QueryException $queryException) {
            return response()->json(
                [
                    'data' => null,
                    'message' => $queryException->getMessage()
                ],
                Response::HTTP_INTERNAL_SERVER_ERROR
            );
        }
    }

    public function user(Request $request)
    {
        try {
            $users = User::find($request->id);
            return response()->json(
                [
                    'data' => $users,
                    'message' => 'User Found'
                ],
                Response::HTTP_OK
            );
        } catch (QueryException $queryException) {
            return response()->json(
                [
                    'data' => null,
                    'message' => $queryException->getMessage()
                ],
                Response::HTTP_INTERNAL_SERVER_ERROR
            );
        }
    }

    public function post(Request $request)
    {
        $user = User::where("id",$request->id)->first();
        if($user == null){
            return parent::errorjson('No Found User', 400);
        }

        $id = $user->id;
        $pass = $request->password;

        $validator = Validator::make($request->all(), $this->rules_post($id, $pass));
        if ($validator->fails()) {
            return parent::errorjson($validator->errors(), 400);
        }
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        if ($request->password != null) {
            $user->password = bcrypt($request->password);
        }
        $user->update();

        return parent::successjson('Updated Successfully', 200);
    }


    public function rules_post($id = null, $password = null)
    {
        $x = [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
        ];
        if ($password != null) {
            $x['password'] = 'required|string|min:6|confirmed';
        }
        return $x;
    }


}
