<?php

use App\Coffee;

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

Route::get('/coffee', 'CoffeeController@index', function(){


});

Route::get('/coffee/create', 'CoffeeController@create', function(){


});

Route::post('/coffee', 'CoffeeController@store', function(){


});

Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/coffee/{id}', function($id){
  $show_view = Coffee::findOrFail($id);
  return view('coffee.show')->with('show_view', $show_view);

});
