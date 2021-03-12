<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/users_x', [\App\Http\Controllers\ExampleApiController::class,'index']);
Route::middleware('auth:api')->get('/users_x/{id}', [\App\Http\Controllers\ExampleApiController::class,'user']);

Route::get('/users', [\App\Http\Controllers\APIMeController::class,'index']);
Route::get('/users/{id}', [\App\Http\Controllers\APIMeController::class,'user']);
Route::post('/users/post', [\App\Http\Controllers\APIMeController::class,'post']);
