<?php

use Illuminate\Support\Facades\DB;
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

Route::get('/', 'HomeController@index');
Route::get('/sendemail', 'HomeController@sendReminderEmail');

Route::get('/', 'CartController@index');
Route::get('/Add-Cart/{id}', 'CartController@AddCart');
Route::get('/Delete-Item-Cart/{id}', 'CartController@DeleteItemCart');
Route::get('Cart', 'CartController@ViewCart');

Route::get('/Delete-Item-List-Cart/{id}', 'CartController@DeleteListItemCart');
Route::get('/Save-Item-List-Cart/{id}/{quanty}', 'CartController@SaveListItemCart');

// Route::get('/Order', 'OrdersController@index');     

Route::get('/category/{id}', 'CategoryController@show');



Route::group(['middleware' => 'CheckLogin', 'prefix' => 'order'], function () {
    Route::get('/Order', function (){
        
    });
});

/**
 * adminPanel
 */
Route::group(['middleware' => 'CheckAdmin' , 'prefix' => 'admin'], function () {
    Route::get('/', function () {
        return view('admin.index');
    })->name('index');
    Route::resource('products', 'ProductController');
    Route::resource('brands', 'BrandController');
    Route::resource('categories', 'CategoryController');
    Route::resource('users', 'UserController');
});


Route::post('signup', 'LoginController@postSignup')-> name('signup');

Route::post('login', 'LoginController@postLogin')-> name('login');

Route::get('signup', 'LoginController@getSignup')-> name('signup');

Route::get('login', 'LoginController@getLogin')-> name('login');

Route::get('logout', 'LoginController@logout')-> name('logout');




