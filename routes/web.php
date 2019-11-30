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

// Route::get('login', function() {
// 	return view('login');
// });
// Route::post('proses', 'HomeController@proses')->name('proses');

// Route::get('register', function() {
// 	return view('register');
// });

// Route::resource('profile', 'ProfileController');

Route::get('/', 'HomeController@index')->name('home');

Route::get('test', function () {
    return view('test');
})->name('test');
Route::post('result', 'TestController@result')->name('result');

Route::get('info', function () {
    return view('info');
})->name('info');

Route::get('submit-test-1', 'TestController@getTest1');
Route::post('submit-test-1', 'TestController@submitTest1');
Route::get('submit-test-2', 'TestController@getTest2');
Route::post('submit-test-2', 'TestController@submitTest2');
Route::get('submit-test-3', 'TestController@getTest3');
Route::post('submit-test-3', 'TestController@submitTest3');
Route::get('submit-test-4', 'TestController@getTest4');
Route::post('result', 'TestController@submitTest4');


Route::get('soal', 'TestController@getSoalExI')->name('SoalExI');

Route::view('/result', 'result');

Route::get('/a', function () {
//    $client = new \Goutte\Client();
//    $crawler = $client->request("get", "http://beasiswa.id/category/beasiswa/beasiswa-sarjana/");
//    $crawler->filter("h1 > a")->each(function ($node) {
//        echo $node->text() . "\n";
//    });
//    return $crawler->filter("span > .ht-day")->text() . " " . $crawler->filter("span > .ht-month-year")->text();
});
