<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(\Database\Seeders\PageSeeder::class);
        $this->call(\Database\Seeders\MonthlyEventSeeder::class);

        // create admin
        $user = User::create([
            'name' => 'Admin',
            'email' => 'admin@admin.com',
            'password' => Hash::make('admin'),
        ]);
        $user->settings()->create([
            'user_id' => $user->id,
        ]);
    }
}
