<?php

Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'middleware' => 'checkAdmin'], function () {
    Route::get('/', function () {
        return view('admin.pages.index');
    })->name('admin');
	Route::resources([
		'category'=>'CategoryController',
		'product'=>'ProductController',
		'post'=>'PostController',
		'slide'=>'SlideController',
		'brand'=>'BrandController',
        'attribute' => 'AttributeController',
        'specie' => 'SpeController',
        'countdown' => 'CountDownController',
	]);
	Route::post('category-ajax','CategoryController@ajax')->name('category.ajax');
	Route::post('brand-ajax','BrandController@ajax')->name('brand.ajax');
	Route::post('post-ajax','PostController@ajax')->name('post.ajax');
	Route::post('product-ajax','ProductController@ajax')->name('product.ajax');
    Route::get('settings', 'SettingController@create')->name('setting.create');
    Route::get('list-setting', 'SettingController@index')->name('setting.index');
    Route::post('settings', 'SettingController@store')->name('setting.store');
    Route::get('edit-setting/{id}', 'SettingController@edit')->name('setting.edit');
    Route::post('update-setting/{id}', 'SettingController@update')->name('setting.update');
    Route::post('setting-ajax', 'SettingController@ajax')->name('setting.ajax');
    Route::post('countdown-ajax', 'CountdownController@ajax')->name('countdown.ajax');
});
