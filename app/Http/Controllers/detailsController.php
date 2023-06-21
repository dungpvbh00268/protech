<?php

namespace App\Http\Controllers;

use App\Models\accountModel;
use App\Models\brandsModel;
use App\Models\cart_proModel;
use App\Models\cartModel;
use App\Models\productsModel;
use App\Models\type_productModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class detailsController extends Controller
{
    function index($id, Request $request)
    {
        $products = productsModel::all();
        $cart_pros = cart_proModel::all();
        $carts = cartModel::all();
        $accounts = accountModel::all();
        $brands = brandsModel::all();
        $type_products = type_productModel::all();

        $header__search = $request->input('header__search');
        $results = productsModel::where('name', 'like', '%' . $header__search . '%')
        ->orWhere('description', 'like', '%' . $header__search . '%')
        ->get();

        return view('pages.details', compact(['products', 'cart_pros', 'carts', 'accounts', 'brands', 'id', 'type_products', 'header__search', 'results']));
    }

    function addCart(Request $request, $id)
    {
        $quantity = $request->input('quantity');

        // Lấy thông tin sản phẩm từ CSDL dựa trên $id
        $product = productsModel::find($id);

        // Kiểm tra xem sản phẩm có tồn tại hay không
        if ($product) {
            // Lấy thông tin giỏ hàng hiện tại của người dùng
            $cart = cartModel::where('id_user', session('id_user'))->first();

            if ($cart) {
                // Sản phẩm và giỏ hàng tồn tại
                // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
                $cart_pro = cart_proModel::where('id_cart', $cart->id)
                    ->where('id_product', $product->id)
                    ->first();

                if ($cart_pro) {
                    // Sản phẩm đã tồn tại trong giỏ hàng, cập nhật quantity
                    $cart_pro->quantity += $quantity; // Tăng quantity lên 1 hoặc giá trị tùy ý
                    $cart_pro->save();
                } else {
                    // Sản phẩm chưa tồn tại trong giỏ hàng, tạo mới cart_pro
                    $cart_pro = new cart_proModel();
                    $cart_pro->id_cart = $cart->id;
                    $cart_pro->id_product = $product->id;
                    $cart_pro->quantity = $quantity; // Giá trị quantity tùy ý
                    $cart_pro->save();
                }

                return back()
                    ->with('showToastAddCartSuccess', true);
            } else {
                // Giỏ hàng không tồn tại, thực hiện xử lý tùy theo yêu cầu của bạn
                // Ví dụ: hiển thị thông báo lỗi, chuyển hướng người dùng, ...
                return back()
                    ->with('showToastAddCartError', true);
            }
        } else {
            // Sản phẩm không tồn tại, thực hiện xử lý tùy theo yêu cầu của bạn
            // Ví dụ: hiển thị thông báo lỗi, chuyển hướng người dùng, ...
            return back()
                ->with('showToastAddCartError', true);
        }
    }

    function removeProductFromCart($id)
    {
        // Lấy thông tin giỏ hàng của người dùng
        $cart = cartModel::where('id_user', session('id_user'))->first();

        // Kiểm tra xem giỏ hàng có tồn tại hay không
        if ($cart) {
            // Tìm sản phẩm trong giỏ hàng dựa trên $id
            $cart_pro = cart_proModel::where('id_cart', $cart->id)
                ->where('id_product', $id)
                ->first();

            // Kiểm tra xem sản phẩm có tồn tại trong giỏ hàng hay không
            if ($cart_pro) {
                // Xóa sản phẩm khỏi giỏ hàng
                $cart_pro->delete();

                return back()
                    ->with('showToastRemoveProductSuccess', true);
            }
        }

        // Nếu không tìm thấy sản phẩm trong giỏ hàng, thực hiện xử lý tùy theo yêu cầu của bạn
        // Ví dụ: hiển thị thông báo lỗi, chuyển hướng người dùng, ...
        return back()
            ->with('showToastRemoveProductError', true);
    }


}