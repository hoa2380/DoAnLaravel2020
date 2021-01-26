<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;


class CategoryController extends Controller
{
    public function index()
    {
        return api_success(
            array('data' => Category::all())
        );
    }


    public function show($id)
    {
        $categories = Category::find($id);
        return api_success(
            array('data' => $categories)
        );
    }

    public function search(Request $request, $id){
        $key_word = $request->input('q');
        $products = Product::where('categories_id', $id)->where('name', 'like',  "%$key_word%")->get();
        return api_success(
            array('data' => $products)
        );
    }

    
}
