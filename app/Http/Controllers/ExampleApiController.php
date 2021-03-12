<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;

class ExampleApiController extends Controller
{
    /**
     * Return basic Api Response
     *
     * @return \Illuminate\Http\JsonResponse
     */
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
}
