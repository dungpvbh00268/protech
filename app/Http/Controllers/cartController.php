<?php

namespace App\Http\Controllers;

use App\Models\accountModel;
use App\Models\cart_proModel;
use App\Models\cartModel;
use App\Models\productsModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class cartController extends Controller
{
    function index(){
        $products = productsModel::all();
        $cart_pros = cart_proModel::all();
        $carts = cartModel::all();
        $accounts = accountModel::all();
        return view('pages/cart', compact(['products', 'cart_pros', 'carts', 'accounts']));
    }
    public function getCart(Request $request){
        if($request->isMethod('post')){
            $validator = Validator::make($request ->all(), [

            ]);
        }
    }
}
