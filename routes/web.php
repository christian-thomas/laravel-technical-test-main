<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[\App\Http\Controllers\HomePageController::class,'index_home'])->name('index_home');

Route::get('/region',[\App\Http\Controllers\HomePageController::class,'region'])->name('region');
Route::post('/region/search',[\App\Http\Controllers\HomePageController::class,'search'])->name('search');

Route::get('/ordering',[\App\Http\Controllers\HomePageController::class,'ordering'])->name('ordering');
Route::get('/ordering/ajax',[\App\Http\Controllers\HomePageController::class,'getordering'])->name('getordering');

Route::get('/fhrs',[\App\Http\Controllers\HomePageController::class,'fhrs'])->name('fhrs');
Route::get('/fhrs_get_data',[\App\Http\Controllers\HomePageController::class,'fhrs_get_data'])->name('fhrs_get_data');

Route::get('/mobile/api',[\App\Http\Controllers\HomePageController::class,'api'])->name('api');
