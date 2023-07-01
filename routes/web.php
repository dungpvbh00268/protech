<?php

use App\Http\Controllers\admin\brand\manageBrand_controller;
use App\Http\Controllers\admin\cart\manageCart_controller;
use App\Http\Controllers\admin\category\manageCategory as CategoryManageCategory;
use App\Http\Controllers\admin\giftcode\manageGiftcode_controller;
use App\Http\Controllers\admin\product\addProduct_controller;
use App\Http\Controllers\authController;
use App\Http\Controllers\cartController;
use App\Http\Controllers\detailsController;
use App\Http\Controllers\manageCategory;
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

Route::get('/', [productController::class, 'index'])->name('index');

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
Route::get('/logout', [authController::class, 'logout'])->name('logout');
Route::post('/signup', [authController::class, 'signup'])->name('signup');

// Route::get('getCart', [cartController::class, 'getCart'])->name('getCart');

Route::get('addCart/{id}', [detailsController::class, 'addCart'])->name('addCart');
Route::get('removeProductFromCart/{id}', [detailsController::class, 'removeProductFromCart'])->name('removeProductFromCart');

Route::get('/updateInfo', [authController::class, 'updateInfo'])->name('updateInfo');

Route::get('/search', [searchController::class, 'index'])->name('search');



//dashborad
// Route::get('dashboard/product-manage', function(){
//     return view('pages/addproduct');
// });

// Route::get('dashboard', [authController::class, 'dashboard'])->name('dashboard');

Route::get('dashboard', [authController::class, 'dashboardIndex'])
    ->name('dashboard.home')
    ->middleware('checkAdmin');

Route::get('manage-products', [authController::class, 'dashboard'])
    ->name('dashboard')
    ->middleware('checkAdmin');

// ================================================================================================================
// 1. Product

Route::get('add-product', [addProduct_controller::class, 'index'])->name('add-Product')->middleware('checkAdmin');
Route::post('addPro', [addProduct_controller::class, 'addPro'])->name('addPro')->middleware('checkAdmin');

// eidt product
Route::get('update-product/{id}/{name}', [addProduct_controller::class, 'updateProduct'])->name('updateProduct')->middleware('checkAdmin');
Route::post('editPro/{id}', [addProduct_controller::class, 'editPro'])->name('editPro')->middleware('checkAdmin');
Route::get('deletePro/{id}', [addProduct_controller::class, 'deletePro'])->name('deletePro')->middleware('checkAdmin');

Route::get('add-product-copy/{id}/{name}', [addProduct_controller::class, 'copyPro'])->name('copyPro')->middleware('checkAdmin');
Route::post('quickCopyPro', [addProduct_controller::class, 'quickCopyPro'])->name('quickCopyPro')->middleware('checkAdmin');




// ================================================================================================================
// 2. Categories
Route::get('manage-categories', [CategoryManageCategory::class, 'index'])
    ->name('manageCategories')
    ->middleware('checkAdmin');


Route::get('add-category', [CategoryManageCategory::class, 'addCategory'])->name('add-category')->middleware('checkAdmin');
Route::get('addCate', [CategoryManageCategory::class, 'addCate'])->name('addCate')->middleware('checkAdmin');

// eidt product
Route::get('update-category/{id}/{name}', [CategoryManageCategory::class, 'updateCategory'])->name('updateCategory')->middleware('checkAdmin');
Route::post('edit/{id}', [CategoryManageCategory::class, 'edit'])->name('edit')->middleware('checkAdmin');
Route::get('delete/{id}', [CategoryManageCategory::class, 'delete'])->name('delete')->middleware('checkAdmin');

Route::get('add-category-copy/{id}/{name}', [CategoryManageCategory::class, 'copyCate'])->name('copyCate')->middleware('checkAdmin');
Route::post('quickCopy', [CategoryManageCategory::class, 'quickCopy'])->name('quickCopy')->middleware('checkAdmin');





// ================================================================================================================
// 3. Carts

Route::get('manage-carts', [manageCart_controller::class, 'index'])
    ->name('manageCarts')
    ->middleware('checkAdmin');

Route::get('add-cart', [manageCart_controller::class, 'addCartView'])->name('add-cart')->middleware('checkAdmin');
Route::get('addCart', [manageCart_controller::class, 'addCart'])->name('addCart')->middleware('checkAdmin');

Route::get('update-category/{id}/{name}', [manageCart_controller::class, 'updateCategory'])->name('updateCategory')->middleware('checkAdmin');
Route::post('editCart/{id}', [manageCart_controller::class, 'editCart'])->name('editCart')->middleware('checkAdmin');
Route::get('deleteCart/{id}', [manageCart_controller::class, 'deleteCart'])->name('deleteCart')->middleware('checkAdmin');

Route::get('add-cart-copy/{id}/{name}', [manageCart_controller::class, 'copyCart'])->name('copyCart')->middleware('checkAdmin');
Route::post('quickCopyCart', [manageCart_controller::class, 'quickCopyCart'])->name('quickCopyCart')->middleware('checkAdmin');


// 4. Brands

Route::get('manage-brands', [manageBrand_controller::class, 'index'])
    ->name('manageBrands')
    ->middleware('checkAdmin');

Route::get('add-brand', [manageBrand_controller::class, 'addBrandView'])->name('add-brand')->middleware('checkAdmin');
Route::get('addBrand', [manageBrand_controller::class, 'addBrand'])->name('addBrand')->middleware('checkAdmin');

Route::get('update-brand/{id}/{name}', [manageBrand_controller::class, 'updateBrand'])->name('updateBrand')->middleware('checkAdmin');
Route::post('editBrand/{id}', [manageBrand_controller::class, 'editBrand'])->name('editBrand')->middleware('checkAdmin');
Route::get('deleteBrand/{id}', [manageBrand_controller::class, 'deleteBrand'])->name('deleteBrand')->middleware('checkAdmin');

Route::get('add-brand-copy/{id}/{name}', [manageBrand_controller::class, 'copyBrand'])->name('copyBrand')->middleware('checkAdmin');
Route::post('quickCopyBrand', [manageBrand_controller::class, 'quickCopyBrand'])->name('quickCopyBrand')->middleware('checkAdmin');

// 5. Giftcode

Route::get('manage-giftcode', [manageGiftcode_controller::class, 'index'])
    ->name('manageGiftcodes')
    ->middleware('checkAdmin');

Route::get('add-giftcode', [manageGiftcode_controller::class, 'addGiftcodeView'])->name('add-giftcode')->middleware('checkAdmin');
Route::get('addGiftcode', [manageGiftcode_controller::class, 'addGiftcode'])->name('addGiftcode')->middleware('checkAdmin');

Route::get('update-giftcode/{id}/{name}', [manageGiftcode_controller::class, 'updateGiftcode'])->name('updateGiftcode')->middleware('checkAdmin');
Route::post('editGiftcode/{id}', [manageGiftcode_controller::class, 'editGiftcode'])->name('editGiftcode')->middleware('checkAdmin');
Route::get('deleteGiftcode/{id}', [manageGiftcode_controller::class, 'deleteGiftcode'])->name('deleteGiftcode')->middleware('checkAdmin');

Route::get('add-giftcode-copy/{id}/{name}', [manageGiftcode_controller::class, 'copyGiftcode'])->name('copyGiftcode')->middleware('checkAdmin');
Route::post('quickCopyGiftcode', [manageGiftcode_controller::class, 'quickCopyGiftcode'])->name('quickCopyGiftcode')->middleware('checkAdmin');
