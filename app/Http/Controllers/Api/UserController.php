<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function login(Request $request)
    {
        $credentials = request(['name', 'password']);

        if (Auth::attempt($credentials)) {
            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $tokenResult->token->save();
            return response()->json([
                'access_token' => 'Bearer ' . $tokenResult->accessToken,
                'expires_at' => Carbon::parse(
                    $tokenResult->token->expires_at
                )
            ]);
        } else {
            return response()->json([
                'message' => 'check your email or password',
            ]);
        }
    }

    public function register(UserRequest $request)
    {
        $request->validated();
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => $request->password,
    
        ]);

        if ($user) {
            return response()->json(['message' => 'created success']);
        } else {
            return response()->json(['message' => 'error cant create user']);
        }
    }

    public function getUser(Request $request)
    {
        return response()->json($request->user());
    }
}
