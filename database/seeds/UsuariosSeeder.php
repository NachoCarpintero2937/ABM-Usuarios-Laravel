<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Faker\Generator;

class UsuariosSeeder extends Seeder
{

    public function run()
    {
        $faker = Faker\Factory::create();

        for ($i = 0; $i < 30; $i++) {
            DB::table('users')->insert([
                'name' => $faker->firstName . " " . $faker->lastName,
                'email' => $faker->unique()->email,
                'password' => Hash::make('123456'),
                'status' => 1,
                'created_at' => new DateTime()
            ]);
        }
    }
}
