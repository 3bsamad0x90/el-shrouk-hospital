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

/**
 * 
 * //authintication routes
 * 
 */
Route::post('/user/register','api\AuthinticationController@register');
Route::post('/user/login','api\AuthinticationController@login');

/**
 * 
 * //countries && governorates && cities List
 * 
 */
Route::get('/countries','api\CountriesController@countries');
Route::get('/countries/{countryId}/governorates','api\CountriesController@governorates');
Route::get('/countries/{iso}/details','api\CountriesController@countryDetails');
Route::get('/countries/{countryId}/governorates/{governorateId}/cities','api\CountriesController@cities');


/**
 * 
 * static pages & others
 * 
 */
Route::get('/getLocationInfo','api\StaticPagesController@getLocationInfo');
Route::get('/settings','api\StaticPagesController@settings');
Route::get('/faqs','api\StaticPagesController@faqs');
Route::post('/sendContactMessage','api\ContactMessagesController@sendContactMessage');

Route::get('/currencyRate','api\StaticPagesController@currencyRate');

/**
 * 
 * writers routes
 * 
 */
Route::get('/writers','api\WritersController@writers');
Route::get('/writers/{id}/details','api\WritersController@writerDetails');

/**
 * 
 * publishers routes
 * 
 */
Route::get('/publishers','api\PublishersController@publishers');
Route::get('/publishers/{id}/details','api\PublishersController@publisherDetails');


/**
 * 
 * Books, Sections and search
 * 
 */
Route::get('/sections','api\BooksController@sections');
Route::get('/sections/{sectionId}/details','api\BooksController@sectionDetails');
Route::get('/books','api\BooksController@books');
Route::get('/books/{id}/details','api\BooksController@bookDetails');
Route::post('/books/{id}/SubmitReview','api\BooksController@bookSubmitReview');

Route::post('/sendResetCode','api\UserController@sendResetCode');
Route::post('/resetMyPassword','api\UserController@resetMyPassword');

Route::group(['prefix'=>'aramex_api'], function(){
    Route::get('/getCountryCities/{countryCode}','api\AramexAPIController@getCountryCities');
});
/**
 * 
 * //user routes
 * 
 */
Route::group(['prefix'=>'user'], function(){
    Route::get('/my-profile','api\UserController@myProfile');
    Route::post('/update-my-profile','api\UserController@UpdateMyProfile');
    Route::get('/deleteAccount','api\UserController@deleteAccount');
    Route::get('/myNotification','api\UserController@myNotification');
    Route::get('/markNotificationsAsRead','api\UserController@markNotificationsAsRead');

    Route::group(['prefix'=>'address'], function(){
        Route::get('/','api\UserController@myAddressList');
        Route::post('/create','api\UserController@createAddress');
        Route::get('/{addressId}/details','api\UserController@AddressDetails');
        Route::post('/{addressId}/update','api\UserController@UpdateAddress');
        Route::get('/{addressId}/delete','api\UserController@DeleteAddress');
    });

    Route::group(['prefix'=>'paymentMethods'], function(){
        Route::get('/','api\UserController@myPaymentMethodList');
        Route::post('/create','api\UserController@createPaymentMethod');
        Route::get('/{PaymentMethodId}/details','api\UserController@PaymentMethodDetails');
        Route::post('/{PaymentMethodId}/update','api\UserController@UpdatePaymentMethod');
        Route::get('/{PaymentMethodId}/delete','api\UserController@DeletePaymentMethod');
    });

    Route::group(['prefix'=>'favorites'], function(){
        Route::get('/','api\UserController@myFavoriteList');
        Route::post('/create','api\UserController@createFavorite');
        Route::get('/{FavoriteId}/delete','api\UserController@DeleteFavorite');
    });

    Route::group(['prefix'=>'orders'], function(){
        Route::get('/','api\OrdersController@myOrdersList');
        Route::get('/getShippingRate','api\OrdersController@getShippingRate');
        Route::post('/create','api\OrdersController@createOrder');
        Route::get('/{OrderId}/details','api\OrdersController@OrderDetails');

        Route::group(['prefix'=>'cart'], function(){
            Route::post('/add','api\OrdersController@addToCart');
            Route::get('/myCart','api\OrdersController@myCart');
            Route::get('/removeItem/{id}','api\OrdersController@removeItem');
            Route::post('/editItem/{id}','api\OrdersController@editItem');
            Route::post('/addCoupon','api\OrdersController@addCoupon');
            Route::get('/removeCoupon','api\OrdersController@removeCoupon');
        });
    });

});

