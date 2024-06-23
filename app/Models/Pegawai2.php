<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pegawai2 extends Model
{

    use SoftDeletes;
    protected $table = "pegawai2";
    protected $dates = ['deleted_at'];
    protected $fillable = ['nama','alamat'];
}
