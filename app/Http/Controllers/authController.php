<?php

namespace App\Http\Controllers;

use App\Models\accountModel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Validator as ValidationValidator;

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
                'username' => 'required',
                'password' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->back();
            }


            $newAccount = new accountModel();
            $newAccount->username = $request->username;
            $newAccount->password = $request->password;

            $newAccount->save();

            return redirect()->intended('/')
                ->with('showToastSignup', true);
        }
    }
}