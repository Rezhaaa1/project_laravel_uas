<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
 
class BlogController extends Controller
{
 
public function home2(){
return view('home2');
}
 
public function tentang(){
return view('tentang');
}
 
public function kontak(){
return view('kontak');
}
 
}