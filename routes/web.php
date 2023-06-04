<?php

use App\Http\Controllers\authController;
use App\Http\Controllers\productController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('pages.home');
// });

Route::get('/',[productController::class,'index'])->name('index');

// Route::get('cart/{para}', function ($para){
//     return view('layouts/master');
// });

Route::get('cart', function(){
    return view('pages/cart');
});

Route::get('details', function(){
    return view('pages/details');
});

Route::post('/login', [authController::class, 'login'])->name('login');
Route::get('/logout',[authController::class, 'logout'])->name('logout');
Route::post('/signup',[authController::class, 'signup'])->name('signup');