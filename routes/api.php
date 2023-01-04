<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/user/register','api\AuthinticationController@register');
Route::post('/user/login','api\AuthinticationController@login');


Route::group(['middleware'=> ['api']], function () {
    Route::get('/services','api\StaticPagesController@services');
    Route::get('/weCares','api\StaticPagesController@weCares');
    Route::get('/ourTeam','api\StaticPagesController@ourTeam');
    Route::get('/equipments','api\StaticPagesController@equipments');
    Route::get('/newsEvents','api\StaticPagesController@newsEvents');
    Route::get('/settings','api\StaticPagesController@settings');

    Route::get('/media/{id}','api\gallaryMediaController@MediaImages');
    Route::get('/gallaryMedia','api\gallaryMediaController@allMedia');

    Route::get('/newsEvents/{id}','api\newsEventsController@show');
    Route::get('/newsEvents','api\newsEventsController@newsEvents');

    Route::post('/sendContactMessage','api\ContactMessagesController@sendContactMessage');

});


