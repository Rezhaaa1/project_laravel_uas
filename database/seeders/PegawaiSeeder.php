<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;


class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
          // insert data ke table pegawai
          //seeder
          DB::table('pegawai')->insert([
            'pegawai_nama' => 'Joni',
            'pegawai_jabatan' => 'Web Designer',
            'pegawai_umur' => 25,
            'pegawai_alamat' => 'Jl. Panglateh'
           ]);

           //faker
           $faker = Faker::create('id_ID');
 
           for($i = 1; $i <= 50; $i++){
       
           // insert data ke table pegawai menggunakan Faker
           DB::table('pegawai')->insert([
           'pegawai_nama' => $faker->name,
           'pegawai_jabatan' => $faker->jobTitle,
           'pegawai_umur' => $faker->numberBetween(25,40),
           'pegawai_alamat' => $faker->address
           ]);
       
           }
    }
}
