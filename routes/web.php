<?php

use App\Http\Controllers\authController;
use App\Http\Controllers\cartController;
use App\Http\Controllers\detailsController;
use App\Http\Controllers\productController;
use App\Http\Controllers\searchController;
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

Route::get('cart/', [cartController::class, 'index'])->name('cart');

// Route::get('cart', function(){
//     return view('pages/cart');
// });
Route::get('details/{id}/{name}', [detailsController::class, 'index'])->name('details');

// Route::get('details', function(){
//     return view('pages/details');
// });

Route::post('/login', [authController::class, 'login'])->name('login');
Route::get('/logout',[authController::class, 'logout'])->name('logout');
Route::post('/signup',[authController::class, 'signup'])->name('signup');

// Route::get('getCart', [cartController::class, 'getCart'])->name('getCart');

Route::get('addCart/{id}', [detailsController::class, 'addCart'])->name('addCart');
Route::get('removeProductFromCart/{id}', [detailsController::class, 'removeProductFromCart'])->name('removeProductFromCart');

Route::get('/updateInfo', [authController::class, 'updateInfo'])->name('updateInfo');

Route::get('/search',[searchController::class, 'index'])->name('search');



//dashborad
// Route::get('dashboard/product-manage', function(){
//     return view('pages/addproduct');
// });

Route::get('dashboard', [authController::class, 'dashboard'])->name('dashboard');