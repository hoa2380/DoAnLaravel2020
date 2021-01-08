<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Productbrands;
use Faker\Generator as Faker;

$factory->define(Productbrands::class, function (Faker $faker) {
    return [
        'name' =>$faker->company
    ];
});
