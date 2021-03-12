<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = User::where('email', 'admin@test.com')->first();
        if (!$admin) {
            User::create(
                [
                    'name' => 'Admin',
                    'email' => 'admin@test.com',
                    'password' => Hash::make('iamthemaster', ['rounds' => 12]),
                    'api_token' => 'i-am-the-token-you-are-looking-for'
                ]
            );
        }
        User::factory(10)->create();
    }
}
