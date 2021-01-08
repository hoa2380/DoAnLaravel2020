<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\ProductBrand;
use App\Product;
use App\Http\Controllers\Controller;

class BrandController extends Controller
{
    public function index()
    {
        return api_success(
            array('data' => ProductBrand::all())
        );
    }


    public function show($id)
    {
        $brand = ProductBrand::find($id);
        return api_success(
            array('data' => $brand->products)
        );
    }

    public function search(Request $request, $id){
        $key_word = $request->input('q');
        $products = Product::where('product_brands_id', $id)->where('name', 'like',  "%$key_word%")->get();
        return api_success(
            array('data' => $products)
        );
    }
}
