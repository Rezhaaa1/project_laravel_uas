<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pegawai2;
use Illuminate\Support\Facades\DB;

class Pegawai2Controller extends Controller
{
    public function index()
    {
        $pegawai2 = Pegawai2::paginate(10); // Menggunakan pagination untuk mendapatkan data
    
        return view('pegawai2', compact('pegawai2'));
    }

    //tambah
    public function tambah()
    {
     return view('pegawai2_tambah');
    }

    //store
    public function store(Request $request)
    {
    $this->validate($request,[
        'nama' => 'required',
        'alamat' => 'required'
        ]);

    // insert data ke table pegawai
    DB::table('pegawai2')->insert([
        'nama' => $request->nama,
        'alamat' => $request->alamat,
    ]);
    // alihkan halaman ke halaman pegawai
    return redirect('/pegawai2');
    }
    
    //edit
    public function edit($id)
    {
    // mengambil data pegawai berdasarkan id yang dipilih
    $pegawai2 = Pegawai2::find($id);
    // passing data pegawai yang didapat ke view edit.blade.php
    return view('pegawai2_edit', ['pegawai2' => $pegawai2]);
    }

    //update
    public function update($id, Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'alamat' => 'required'
        ]);
    
        $pegawaii = Pegawai2::find($id);
        $pegawaii->nama = $request->nama;
        $pegawaii->alamat = $request->alamat;
        $pegawaii->save();
    
        return redirect('/pegawai2');
    }
    public function hapus($id)
    {
        $pegawaii = Pegawai2::find($id);
        $pegawaii->delete();
        return redirect('/pegawai2');
    }

    public function trash()
    {
     // mengampil data pegawai yang sudah dihapus
     $pegawai2 = pegawai2::onlyTrashed()->get();
     return view('pegawai2_trash', ['pegawai2' => $pegawai2]);
    }

    public function kembalikan($id)
    {
     $pegawai2 = pegawai2::onlyTrashed()->where('id',$id);
     $pegawai2->restore();
     return redirect('/pegawai2/trash');
    }

    // restore semua data pegawai yang sudah dihapus
    public function kembalikan_semua()
    {
    
     $pegawai2 = pegawai2::onlyTrashed();
     $pegawai2->restore();
 
     return redirect('/pegawai2/trash');
    }

    // hapus permanen
    public function hapus_permanen($id)
    {
     // hapus permanen data pegawai
     $pegawai2 = pegawai2::onlyTrashed()->where('id',$id);
     $pegawai2->forceDelete();
 
     return redirect('/pegawai2/trash');
    }

    // hapus permanen semua pegawai yang sudah dihapus
    public function hapus_permanen_semua()
    {
     // hapus permanen semua data pegawai yang sudah dihapus
     $pegawai2 = pegawai2::onlyTrashed();
     $pegawai2->forceDelete();
 
     return redirect('/pegawai2/trash');
    }
}
