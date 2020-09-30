<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    $name = $faker->words(3, true);
        return [
       'name' => $name,
       'slug' => Str::slug($name, '-'),
       'img' => 'https://loremflickr.com/320/240',
       'price' => $faker->randomFloat(null, 0, 2),
       'recommended' =>$faker->numberBetween(0,1),
       'category_id' =>$faker->numberBetween(1,3),
       'description' =>$faker->realText(),
    ];
});
