<?php

namespace App\Http\Controllers;

use App\Models\accountModel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Validator as ValidationValidator;
use Illuminate\Database\Eloquent\Model;
use App\Models\cartModel;
use App\Models\productsModel;

class authController extends Controller
{
    public function login(Request $request)
    {
        $name = $request->input('username');
        $password = $request->input('password');
        $account = accountModel::where('username', $name)->first();

        if ($account && $password == $account->password) {
            $request->session()->put('username', $account->username);
            $request->session()->put('password', $account->password);
            $request->session()->put('is_admin', $account->is_admin);
            $request->session()->put('id', $account->id);

            // Lấy thông tin giỏ hàng của người dùng từ bảng cart (nếu có)
            $cart = cartModel::where('id_user', $account->id)->first();
            $request->session()->put('id_user', $cart->id_user);

            return redirect()->intended('/')
                ->with("showToastLoginSS", true);

        } else {
            return back()
                ->with('showToastSigninError', true);
        }
    }

    public function logout()
    {
        session()->flush();
        return redirect()->intended('/');
    }

    public function signup(Request $request)
    {
        if ($request->isMethod('post')) {
            $validator = Validator::make($request->all(), [
                'username' => 'required|max:12',
                'password' => 'required|min:6'
            ]);

            if ($validator->fails()) {
                return redirect()->intended('/')
                    ->with('showToastSignupError', true);
            }


            $newAccount = new accountModel();
            $newAccount->username = $request->username;
            $newAccount->password = $request->password;

            $newAccount->save();

            // Lấy ID của tài khoản mới đăng ký
            $userId = $newAccount->id;

            // Tạo bản ghi mới trong bảng cart
            $newCart = new cartModel();
            $newCart->id_user = $userId;
            // Gán các trường khác trong bảng cart
            // $newCart->field1 = 'value1';
            // $newCart->field2 = 'value2';
            // ...

            $newCart->save();


            return redirect()->intended('/')
                ->with('showToastSignup', true);
        }
    }

    public function updateInfo(Request $request)
    {
        // Lấy thông tin người dùng từ session('id_user')
        $user = accountModel::find(session('id_user'));

        // Kiểm tra và cập nhật username
        if ($request->has('usernameUpdate')) {
            $user->username = $request->input('usernameUpdate');
        }

        // Kiểm tra và cập nhật password
        if ($request->has('passwordUpdate') && $request->input('passwordUpdate') != 'Change Password') {
            $user->password = bcrypt($request->input('passwordUpdate'));
        }

        // Lưu thay đổi vào cơ sở dữ liệu
        $user->save();

        // Redirect hoặc trả về response tùy theo logic của ứng dụng
        // ...
        return redirect()->intended('/')
            ->with('showToastSignup', true);
    }


    public function dashboard()
    {
        $accounts = accountModel::all();
        $products = productsModel::all();
        return view('pages/admin/product/manageProduct', compact('accounts', 'products'));
    }

    public function dashboardIndex(){
        $accounts = accountModel::all();
        $products = productsModel::all();
        return view('pages/admin/dashboard', compact('accounts', 'products'));
    }
}