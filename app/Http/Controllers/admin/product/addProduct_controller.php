<?php

namespace App\Http\Controllers\admin\product;

use App\Http\Controllers\Controller;
use App\Models\brandsModel;
use App\Models\categoriesModel;
use App\Models\productsModel;
use App\Models\type_productModel;
use Illuminate\Http\Request;

class addProduct_controller extends Controller
{
    public function index(){
        $brands = brandsModel::all();
        $products = productsModel::all();
        $categories = categoriesModel::all();
        $type_products = type_productModel::all();
        return view('pages/admin/product/add', compact('brands', 'products', 'categories', 'type_products'));
    }
}
