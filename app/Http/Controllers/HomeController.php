<?php

namespace App\Http\Controllers;
use App\Category;
use App\Jobs\SendReminderEmail;
use App\Product;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $products = Product::all();
        $categories = Category::all();
        return view('welcome', [
            'products' => $products,
            'categories' => $categories
        ]);
    }

    public function sendReminderEmail(){
        $user = new User();
        $user->name = "Hoa";
        $user->email = "mail@gmail.com";
        $user->password = "dasdfsadf";
        $user->level = 1;
        $job = (new SendReminderEmail($user))->delay(60);
        dd($job);
        $this->dispatch($job);
    }
}
