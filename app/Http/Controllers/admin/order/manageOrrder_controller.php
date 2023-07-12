<?php

namespace App\Http\Controllers\admin\order;

use App\Http\Controllers\Controller;
use App\Models\accountModel;
use App\Models\orderModel;
use App\Models\productsModel;
use Illuminate\Http\Request;

class manageOrrder_controller extends Controller
{
    public function index()
    {
        $accounts = accountModel::all();
        $products = productsModel::all();
        $orders = orderModel::all();
        return view('pages/admin/orders/manageOrder', compact('accounts', 'products', 'orders'));
    }

    public function addOrderView(){
        $accounts = accountModel::all();
        $products = productsModel::all();
        $orders = orderModel::all();
        return view('pages.admin.orders.add', compact('accounts', 'products', 'orders'));
    }
}
