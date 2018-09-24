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

Route::get('/','HomeController@index');

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
Route::get('/topic/{name?}/{id?}', 'HomeController@load_topic')->name('topic');
Route::get('/comment/{name?}/{id?}', 'HomeController@load_comment')->name('comment');
Route::group([ 'middleware' => [ 'auth'] ], function(){
Route::get('/create_industry', 'AdminController@create_industry')->name('industry');
Route::post('/store_industry','AdminController@store_industry')->name('store_industry');
Route::get('/create_sub_industry', 'AdminController@create_sub_industry')->name('_industry');
Route::post('/store_sub_industry','AdminController@store_sub_industry')->name('store_sub_industry');
Route::post('/comment','CommentController@store_comment')->name('savecomment');
Route::get('/create_topic', 'TopicController@index')->name('create_topic');
Route::get('/subinds/{id?}', 'TopicController@getSubindustry')->name('subinds');
Route::post('/save_new_topic','TopicController@create')->name('save_new_topic');

Route::post('rate', 'CommentController@rate')->name('rate');

});
