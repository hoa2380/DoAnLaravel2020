<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Order;
use App\Order_detail;
use App\Product;
use Faker\Generator as Faker;

$factory->define(Order_detail::class, function (Faker $faker) {
    $product = Product::all()->pluck('id')->toArray();
    $order = Order::all()->pluck('id')->toArray();
    return [
        'name' =>$faker->name,
        'price' =>$faker->randomDigit,
        'quannity' =>$faker->randomFloat,
        'total' =>$faker->randomDigit,
        'product_id'=>$faker->randomElement($product),
        'orders_id'=>$faker->randomElement($order)
    ];
});
