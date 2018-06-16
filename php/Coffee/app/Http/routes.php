<?php

use App\Coffee;
use App\CoffeeController;

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


});

Route::get('/coffee', function(){
  $coffees = Coffee::all();
  return view('coffee.index', compact('coffees'));

});

Route::get('/coffee/{{id}}', 'CoffeeController@show', function($id){

return view('coffee.show');
});

Route::get('/coffee/create', function(){

  return view('coffee.create');
});

Route::post('/coffee','CoffeeController@store', function(){


});

Route::delete('/coffee/{{id}}', 'CoffeeController@destroy', function($id){


});
