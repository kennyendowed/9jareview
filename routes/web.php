<?php

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/welcome', 'HomeController@index')->name('welcome');
Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
// Route::get('/admin', 'AdminController@admin')
//     ->middleware('is_admin')
//     ->name('admin');
  // Route::get('protected', ['middleware' => ['auth', 'admin'], function() {
  //       return "this page requires that you be logged in and an Admin";
  //   }]);
  Route::get('/admin', 'AdminController@admin')
      ->middleware('admin')
      ->name('admin');

Route::group([ 'middleware' => [ 'auth'] ], function(){


});
