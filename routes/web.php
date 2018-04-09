<?php

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





Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
require_once 'backend.php';
require_once 'frontend.php';

Route::get('/logout', function () {
    \Illuminate\Support\Facades\Auth::logout();
    return redirect('/');
});

Route::get('test',function (){

    foreach (\App\Model\Product::find(3)->imageDetail as $item) {
        dump($item);
        
   } 
});
//Route::view('/','front.pages.index');