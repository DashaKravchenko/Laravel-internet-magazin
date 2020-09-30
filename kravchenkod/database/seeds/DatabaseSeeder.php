<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(){
        factory(App\User::class, 1)->create();
        // factory(App\Category::class, 3)->create();
        // factory(App\Product::class, 100)->create();
    }
}
