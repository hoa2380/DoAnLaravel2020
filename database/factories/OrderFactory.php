<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Order;
use Faker\Generator as Faker;
use Illuminate\Foundation\Auth\User;

$factory->define(Order::class, function (Faker $faker) {
    $user = User::all()->pluck('id')->toArray();
    return [
        'user_id'=>$faker->randomElement($user)  
    ];
});
