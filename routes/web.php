<?php

use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//MATERI PERTAMA SAMPAI SEBELUM UTS

Route::get('/', function () {
    return view('welcome');
});

Route::get('halo', function () {
    return "Halo, Selamat datang Elta";
});

Route::get('blog', function () {
    return view('blog');
    });


use App\Http\Controllers\DosenController;
Route::get('dosen', [DosenController::class, 'index']);


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

use App\Http\Controllers\PegawaiiController;
Route::get('/pegawaii', [PegawaiiController::class, 'index']);
Route::get('/formulir', [PegawaiiController::class, 'formulir']);
Route::post('/formulir/proses', [PegawaiiController::class, 'proses']);

use App\Http\Controllers\BlogController;
Route::get('/blog', [BlogController::class, 'home2']);
Route::get('/blog/tentang', [BlogController::class, 'tentang']);
Route::get('/blog/kontak', [BlogController::class, 'kontak']);

Route::get('/dashboard', function () {
    return view('dashboard.dashboard');
});

//SETELAH UTS

 //route CRUD
 use App\Http\Controllers\PegawaiController;
 Route::get('/pegawai', [PegawaiController::class, 'index']);
 Route::get('/pegawai/tambah', [PegawaiController::class, 'tambah']);
 Route::post('/pegawai/store', [PegawaiController::class, 'store']);
 Route::get('/pegawai/edit/{id}', [PegawaiController::class, 'edit']);
 Route::post('/pegawai/update', [PegawaiController::class, 'update']);
 Route::get('/pegawai/hapus/{id}', [PegawaiController::class, 'hapus']);
 Route::get('/pegawai/cari',[PegawaiController::class, 'cari']);

 use App\Http\Controllers\MalasngodingController;
Route::get('/input',[MalasngodingController::class, 'input']);
Route::post('/proses', [MalasngodingController::class, 'proses']);

use App\Http\Controllers\Pegawai2Controller;
Route::get('/pegawai2', [Pegawai2Controller::class, 'index']);	
Route::get('/pegawai2/tambah', [Pegawai2Controller::class, 'tambah']);
Route::post('/pegawai2/store', [Pegawai2Controller::class, 'store']);
Route::get('/pegawai2/edit/{id}', [Pegawai2Controller::class, 'edit']);
Route::put('/pegawai2/update/{id}', [Pegawai2Controller::class, 'update']);
Route::get('/pegawai2/hapus/{id}', [Pegawai2Controller::class, 'hapus']);
Route::get('/pegawai2/trash', [Pegawai2Controller::class, 'trash']);
Route::get('/pegawai2/kembalikan/{id}', [Pegawai2Controller::class, 'kembalikan']);
Route::get('/pegawai2/kembalikan_semua', [Pegawai2Controller::class, 'kembalikan_semua']);
Route::get('/pegawai2/hapus_permanen/{id}', [Pegawai2Controller::class, 'hapus_permanen']);
Route::get('/pegawai2/hapus_permanen_semua', [Pegawai2Controller::class, 'hapus_permanen_semua']);

//one to one
use App\Http\Controllers\PenggunaController;
Route::get('/pengguna', [PenggunaController::class, 'index']);

//one to many
use App\Http\Controllers\WebController;
Route::get('/article', [WebController::class, 'index']);

//many to many
use App\Http\Controllers\DikiController;
Route::get('/anggota', [DikiController::class, 'index']);
Route::get('/hash', [DikiController::class, 'hash']);		

//Encrypt decrypt
use App\Http\Controllers\EltaController;
Route::get('/enkripsi', [EltaController::class, 'enkripsi']);
Route::get('/data', [EltaController::class, 'data']);
Route::get('/data/{data_rahasia}', [EltaController::class, 'data_proses']);	

use App\Http\Controllers\UploadController;
Route::get('/upload', [UploadController::class, 'upload']);
Route::post('/upload/proses', [UploadController::class, 'proses_upload']);
Route::get('/upload/hapus/{id}', [UploadController::class, 'hapus']);