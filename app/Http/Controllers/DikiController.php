<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Anggota;
use App\Models\Hadiah;
use Illuminate\Support\Facades\Hash;

class DikiController extends Controller
{
    public function index()
    {
        $anggota = Anggota::all();
        return view('anggota', ['anggota' => $anggota]);
    }

    public function hash(){
        $hash_password_saya = Hash::make('halo123');
        echo $hash_password_saya;
        }
}
