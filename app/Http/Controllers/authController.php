<?php

namespace App\Http\Controllers;

use App\Models\accountModel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Validator as ValidationValidator;
use Illuminate\Database\Eloquent\Model;
use App\Models\cartModel;

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

            return redirect()->intended('/');

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
                return redirect()->back();
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
}