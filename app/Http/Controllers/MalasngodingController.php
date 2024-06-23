<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MalasngodingController extends Controller
{
    public function input()
    {
        return view('input'); // Ganti tanda kutip miring dengan tanda kutip tunggal atau ganda
    }

    public function proses(Request $request)
    {
        $messages = [
            'required' => ':attribute wajib diisi yaaa teman-teman!!!',
            'min' => ':attribute harus diisi minimal :min karakter yaa!!!',
            'max' => ':attribute harus diisi maksimal :max karakter yaaa!!!',
            'numeric' => ':attribute harus angka!!!',
        ];

        $this->validate($request, [
            'nama' => 'required|min:4|max:20',
            'pekerjaan' => 'required',
            'usia' => 'required|numeric'
        ], $messages);

        return view('proses', ['data' => $request]); // Pastikan view 'proses.blade.php' ada di resources/views
    }
}
