<?php

namespace App\Http\Controllers\admin\account;

use App\Http\Controllers\Controller;
use App\Models\accountModel;
use App\Models\orderModel;
use App\Models\productsModel;
use Illuminate\Http\Request;

class manageAccount_controller extends Controller
{
    public function index(){
        $accounts = accountModel::all();
        $products = productsModel::all();
        $accounts = accountModel::all();
        return view('pages/admin/accounts/manageAccount', compact('accounts', 'products', 'accounts'));
    }

    public function addAccountView(){
        return view('pages/admin/accounts/add');
    }
}
