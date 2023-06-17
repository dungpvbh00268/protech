<?php

namespace App\Http\Controllers;

use App\Models\accountModel;
use App\Models\cart_proModel;
use App\Models\cartModel;
use App\Models\productsModel;
use Illuminate\Http\Request;

class searchController extends Controller
{
    function index(){
        $accounts = accountModel::all();
        $products = productsModel::all();
        $cart_pros = cart_proModel::all();
        $carts = cartModel::all();
        return view('pages.search', compact('accounts', 'products', 'cart_pros', 'carts'));
    }
}
