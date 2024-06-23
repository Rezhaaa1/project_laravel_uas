<?php

namespace App\Models;
use App\Models\Telepon;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    protected $table = "pengguna";
 
    public function telepon()
    {
    return $this->hasOne(Telepon::class);
    }
}