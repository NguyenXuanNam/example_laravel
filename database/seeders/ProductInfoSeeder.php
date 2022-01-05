<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Faker\Generator as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductInfoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        for ($i=0; $i < 100; $i++) {
            DB::table('product_info')->insert([
                'customer_name' => Str::random(10),
                'customer_address' => Str::random(20),
                'customer_phone' => $faker->phoneNumber,
                'customer_email' => Str::random(10) . '@gmail.com',
                'product_name' => Str::random(20),
                'serial_number' => $faker->randomDigit,
                'purchased_at' => Carbon::now()->subMinutes(rand(1, 55)),
                'expired_at' => Carbon::now()->subMinutes(rand(1, 55)),
            ]);
        }
    }
}
