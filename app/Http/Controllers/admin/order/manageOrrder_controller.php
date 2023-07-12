<?php

namespace App\Http\Controllers\admin\order;

use App\Http\Controllers\Controller;
use App\Models\accountModel;
use App\Models\orderModel;
use App\Models\productsModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class manageOrrder_controller extends Controller
{
    public function index()
    {
        $accounts = accountModel::all();
        $products = productsModel::all();
        $orders = orderModel::all();
        return view('pages/admin/orders/manageOrder', compact('accounts', 'products', 'orders'));
    }

    public function addOrderView()
    {
        $accounts = accountModel::all();
        $products = productsModel::all();
        $orders = orderModel::all();
        return view('pages.admin.orders.add', compact('accounts', 'products', 'orders'));
    }

    public function addOrder(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user' => 'required',
            'quantity' => 'required',
            'address' => 'required',
            'status' => 'required',

        ]);

        if ($validator->fails()) {
            return back()->with('showToastError', true);
        } else {
            $newOrder = new orderModel();
            $newOrder->id_user = $request->user;
            $newOrder->quantity = $request->quantity;
            $newOrder->address = $request->address;
            $newOrder->status = $request->status;
            // $billInfo = [
            //     'name' => $request->name,
            //     'phoneNumber' => $request->phoneNumber,
            //     'totalMoney' => $request->totalMoney,
            //     'productName' => $request->productName,
            //     'productId' => $request->productId,
            //     'code' => $request->code,
            // ];
            $billInfo = [
                $request->name,
                $request->phoneNumber,
                $request->totalMoney,
                $request->productName,
                $request->productId,
                $request->code,
            ];
            $jsonString = json_encode($billInfo);
            $newOrder->bill_info = $jsonString;
            $newOrder->save();

            return redirect()->intended('manage-order')->with('showToastSuccess', true);
        }
    }
}