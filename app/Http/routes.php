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
    return view('index');
})->name('index');

Route::auth();

Route::get('/home', 'HomeController@index');
Route::get('test1', function () {
    return view('test');
});

// Route::post('test','test@test')->name('test');
Route::get('test', 'test@test');

//Cart
Route::get('add_to_cart/{id}/{name}/{qty}/{price}', 'CartController@addCart');

Route::get('invoice', 'test@invoice');

Route::get('cart', function () {
    return view('layouts.page.cart');
});

Route::get('clearCart', 'CartController@clear_cart');
Route::get('removeCart/{id}', 'CartController@removeCart');
Route::get('updateCart/{id}/{qty}', 'CartController@updateCart');
Route::get('api/cart', function () {
    echo Cart::content();
});


//admin
Route::group(['prefix' => 'admin-data', 'middleware' => ['admin_auth','SqlInjection']], function () {
    Route::get('/', 'admin@dashboard');
    Route::get('product/add/form', 'admin@add_product_form');

    Route::post('product/add', 'admin@add_product_post')->name('addproductPost');

    Route::get('product', 'admin@product_get_all')->name('product_get_all');


    Route::group(['prefix' => 'categorie'], function () {

        Route::get('', 'admin@categorie_get_all');
        Route::get('/add/form', 'admin@add_categorie_form');
        Route::post('/add', 'admin@add_categorie_post')->name('addcategoriePost');


    });

    Route::get('orders/', 'admin@get_orders');

});

Route::group(['prefix' => 'api'], function () {
    Route::get('get_subcategorie/{id}', 'apiController@get_subcategorie');
});


//Client dashboard

Route::group(['prefix' => 'MyAccount', 'middleware' => ['auth','SqlInjection']], function () {
    Route::get('/', 'clientDashboardController@get_orders');
    Route::get('Orders', 'clientDashboardController@get_orders');
    Route::get("Orders/{id_order}", 'clientDashboardController@get_order');
    Route::get("Orders/{id_order}/invoice", 'clientDashboardController@invoice');
    Route::get('Profile', 'clientDashboardController@get_profile');
    Route::post('postProfile', 'clientDashboardController@update_profile')->name('postProfile');

});


Route::group(['prefix' => 'product'], function () {
    Route::get('', 'PrincipalController@product_get_all');
    Route::get('{categorie}/{id_categorie}','PrincipalController@product_get_all');
    Route::get('{categorie}','PrincipalController@product_get_all');
});


Route::get('checkout', function () {
    return view('layouts.page.checkout');
})->middleware('auth');


Route::post('checkoutPost', 'checkoutController@checkoutPost')->name('checkoutPost');


Route::get('pusher', function () {
    event(new App\Events\test('Hi there Pusher!', 'COMCAC'));
    return "Event has been sent!";
});


Route::get('curl/get_subcategorie', 'curlController@get_subcategorie');
Route::get('curl/get_product', 'curlController@get_product');

Route::get('mes', function () {
    return view('layouts.page.checkout_mes');
})->middleware('auth');
