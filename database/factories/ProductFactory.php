<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Product::class, function (Faker $faker) {
    return [
        'category_id' => 1,
        'brand_id' => 1,
        'name' => $faker->name,
        'price' => $faker->numberBetween(100000, 5000000),
        'short_description' => $faker->sentence,
        'description' => $faker->paragraph,
        'image' => $faker->imageUrl(),
        'slug' => str_slug($faker->name),
        'status' => 1,
        'featured' => 0,
        'created_at' => $faker->dateTime
    ];
});
