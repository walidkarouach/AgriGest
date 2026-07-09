<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Parcelle;

class ParcelleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Parcelle::factory(20)->create();
    }
}