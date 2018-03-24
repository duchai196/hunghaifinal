<?php
Route::group(['namespace'=>'Backend','prefix'=>'admin'],function(){
	Route::resources([
		'category'=>'CategoryController',
		'product'=>'ProductController',
		'post'=>'PostController',
		'slide'=>'SlideController',
		'brand'=>'BrandController',
        'attribute' => 'AttributeController',
        'specie' => 'SpeController',
	]);
	Route::post('category-ajax','CategoryController@ajax')->name('category.ajax');
	Route::post('brand-ajax','BrandController@ajax')->name('brand.ajax');
	Route::post('post-ajax','PostController@ajax')->name('post.ajax');
	Route::post('product-ajax','ProductController@ajax')->name('product.ajax');
    Route::get('settings', 'SettingController@index')->name('getSettings');
    Route::post('settings', 'SettingController@store')->name('postSettings');
});
