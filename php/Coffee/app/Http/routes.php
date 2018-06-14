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

$new_coffee = new Coffee;
$new_coffee->name = "Espresso";
$new_coffee->size = "Grande";
$new_coffee->save();

    return view('welcome');
});
