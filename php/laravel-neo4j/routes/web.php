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

Route::controller(\App\Http\Controllers\UsersController::class)->group(function() {
    Route::post('/users', 'store');
    Route::get('/users', 'index');
});

Route::controller(\App\Http\Controllers\LeagueController::class)->group(function() {
   Route::post('/leagues', 'store');
   Route::get('/leagues', 'index');
});


Route::get('/', function () {
    return view('welcome');
});
