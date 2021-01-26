<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('login', [UserController::class, 'login']);
Route::post('register', [UserController::class, 'register']);

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('user', [UserController::class, 'getUser']);
});

Route::namespace('api')->group(function() {
    Route::get('brands', 'BrandController@index');
    Route::get('brands/{id}', 'BrandController@show');
    Route::get('brands/{id}/search', 'BrandController@search');

    Route::get('products', 'ProductController@index');
    Route::get('products/{id}', 'ProductController@show');
    Route::get('product/search', 'ProductController@search');
    Route::get('getProductsByCategories/{id}', 'ProductController@getProductsByCategory');

    
    Route::get('categories', 'CategoryController@index');
    Route::get('categories/{id}', 'CategoryController@show');
    Route::get('categories/{id}/search', 'CategoryController@search');

    

});
