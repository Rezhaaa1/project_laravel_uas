<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengguna; // Pastikan penulisan nama model dan namespace-nya benar


class PenggunaController extends Controller
{
    public function index()
    {
        // Mengambil semua data pengguna dengan relasi telepon
        $pengguna = Pengguna::with('telepon')->get();
        
        // Mengembalikan data ke view
        return view('pengguna', ['pengguna' => $pengguna]);
    }
}
