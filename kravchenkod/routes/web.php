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

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/', 'MainController@index');
Route::get('/mebel', 'MainController@mebel');
Route::get('/delivery', 'MainController@delivery');
Route::get('/address', 'MainController@address');
Route::get('/category/{slug}', 'MainController@category');
Route::get('/product/{slug}', 'MainController@product');



Route::post('/cart/add', 'CartController@add');
Route::post('/cart/clear', 'CartController@clear');
Route::post('/cart/remove', 'CartController@remove');


Route::get('/checkout', 'CartController@checkout');
Route::get('/end-checkout', 'CartController@endCheckout');


Route::get('/write', 'WriteController@write');
Route::post('/letter', 'WriteController@letter');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
