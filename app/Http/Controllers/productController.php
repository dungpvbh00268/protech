<?php

namespace App\Http\Controllers;

use App\Models\productsModel;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class productController extends Controller
{
    function index(){
        $products = productsModel::all();
        return view('pages.home', compact('products'));
    }
}
