<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function getLogin()
    {
        if (Auth::check()) {
            return redirect()->back();
        } else {
            return view('login');
        }
    }

    public function postLogin(Request $request)
    {
        $login = [
            'name' => $request->name,
            'password' => $request->password,
        ];

        if (Auth::attempt($login)) {
            return redirect('/');
        } else {
            return redirect()->back()->withErrors('Đăng nhập thất bại!');
        }
    }



    public function postSignup(UserRequest $request)
    {
        $request['password'] = bcrypt($request->password);
        $user = User::create($request->all());
        if ($user) {
            Auth::login($user);
            return redirect()->back()->withErrors('Đăng kí tài khoản thành công');
        } else {
            return response()->json(['status' => 'error', 'message' => $user]);
        }
    }

    public function getSignup(){
        return view('signup');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->back();
    }
}
