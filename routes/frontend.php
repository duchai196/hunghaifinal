<?php
/**
 * Created by PhpStorm.
 * User: HaiDucNguyen
 * Date: 3/4/2018
 * Time: 5:14 PM
 */
Route::group(['namespace' => 'Frontend'], function () {
    Route::get('/', 'PageController@getIndex')->name('getIndex');
    Route::get('/san-pham', 'PageController@getShop')->name('getShop');
    Route::get('/danh-muc/{slug}', 'PageController@getCate')->name('getCate');
    Route::get('/san-pham/{slug}', 'PageController@getProduct')->name('getProduct');
    Route::get('/tin-tuc', 'PageController@getBlog')->name('getBlog');
    Route::get('/bai-viet/{slug}', 'PageController@getPost')->name('getPost');
});
