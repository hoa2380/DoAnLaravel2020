<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\UserRequest;
use App\Product;
use App\Productbrands;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $usersData = User::all();

        return view('admin.users.index',
         ['usersData' => $usersData]
        );
    }

    public function create()
    {
        return route('users.store');
    }

    

    public function store(UserRequest $request)
    {
        $user = User::create($request->all());
        if ($user) {
            return redirect('admin/users');
        }
        return redirect()->route('users.create');
    }

    public function show($id)
    {
        $usersAll = User::all();
        $users = User::findOrFail($id);
        return view('users', ['usersData'=>$users,'categoriesAll'=>$usersAll ]);
    }

    public function update(Request $request, $id)
    {
        $editUser = User::find($id);
        $editUser->update($request->all());
        if ($editUser) {
            return redirect()->route('users.index');
        }
        return redirect()->route('users.update');
    }

    public function destroy($id)
    {
        User::findOrFail($id)->delete();
        return redirect()->route('users.index');
    }
}
