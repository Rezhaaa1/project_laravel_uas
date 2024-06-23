<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
 
class DosenController extends Controller
{
    public function index(){
     $nama = "Elta Apriliani";

     $pelajaran = ["Algoritma & Pemrograman","Kalkulus","Pemrograman Web","Framework"];
 
     return view('biodata',['nama' => $nama , 'matkul' => $pelajaran]);
     }
    
}
