<?php

namespace App\Http\Controllers;

use App\Cart;   
use App\Category;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Session;

class CartController extends Controller
{
    public function Index(){
        $products = Product::all();
        $categories = Category::all();
        $users = User::all();
        return view('welcome', [
        'products' => $products,
        'categories' => $categories
        ]);
    }

    public function AddCart(Request $req, $id){
        $products = Product::all()->where('id', $id)->first();
        if($products != null ){
            $oldCart = Session('Cart') ? Session('Cart') : null;
            $newCart = new Cart($oldCart);
            $newCart->AddCart($products, $id);

            $req->session()->put('Cart', $newCart);
            
        }
        return view('cartitem');
        
    }

    public function DeleteItemCart(Request $req, $id){
        $oldCart = Session('Cart') ? Session('Cart') : null;
        $newCart = new Cart($oldCart);
        $newCart->DeleteItemCart($id);
        if(Count($newCart->products) > 0){
            $req->session()->put('Cart', $newCart);

        }else{
            $req->session()->forget('Cart');
        }
        return view('cartitem');  
    }

    public function ViewCart(){
        return view('cart');
    }

    public function DeleteListItemCart(Request $req, $id){
        $oldCart = Session('Cart') ? Session('Cart') : null;
        $newCart = new Cart($oldCart);
        $newCart->DeleteItemCart($id);
        if(Count($newCart->products) > 0){
            $req->session()->put('Cart', $newCart);

        }else{
            $req->session()->forget('Cart');
        }
        return view('list-cart');  
    }

    public function SaveListItemCart(Request $req, $id, $quanty){
        $oldCart = Session('Cart') ? Session('Cart') : null;
        $newCart = new Cart($oldCart);
        $newCart->UpdateItemCart($id, $quanty);

        $req->session()->put('Cart', $newCart);
        
        return view('list-cart');  
    }
}
