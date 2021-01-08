<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category;
use App\Model;
use App\Product;
use App\Productbrand;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    $productBrands = ProductBrand::all()->pluck('id')->toArray();
    $categories = Category::all()->pluck('id')->toArray();

    return [
        'name' => $faker->name,
        'desc' => $faker->text,
        'image' => 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg',
        'price' => $faker->randomDigitNotNull,
        
        'product_brands_id' => $faker->randomElement($productBrands),
        'categories_id' => $faker->randomElement($categories)
    ];
});
