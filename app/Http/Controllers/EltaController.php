<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Support\Facades\Crypt;
 
class EltaController extends Controller
{
public function enkripsi(){
    $encrypted = Crypt::encryptString('Belajar Laravel sangat menyenangkan karena dosennya pak Jul');
    $decrypted = Crypt::decryptString($encrypted);
    
    echo "Hasil Enkripsi : " . $encrypted;
    echo "<br/>";
    echo "<br/>";
    echo "Hasil Dekripsi : " . $decrypted;
}
public function data(){
 
    $parameter =[
    'nama' => 'Elta Apriliani',
    'pekerjaan' => 'Programmer',
    ];
    $enkripsi= Crypt::encrypt($parameter);
    echo "<a href='/data/".$enkripsi."'>Disini Bro Rahasianya</a>";
    }
     
    public function data_proses($data){
    $data = Crypt::decrypt($data);
     
    echo "Nama : " . $data['nama'];
    echo "<br/>";
    echo "Pekerjaan : " . $data['pekerjaan'];
    }
}