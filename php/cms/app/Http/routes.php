<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/users', function () {

  return "This is a list of users";
});

Route::get('/hello', 'CartController@hello');

 // Route::get('/post', 'CartController@index');

// Route::resource('carts', 'CartController');

// Route::get('/admin', function () {
//
//   return "Whats going on";
// });
//
// Route::get('/admin/{a}', function ($a) {
//
// return "This is post number: ".$a;
// });
