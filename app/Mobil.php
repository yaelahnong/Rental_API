<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;

class Mobil extends Model implements AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nama_mobil', 'merk_mobil', 'deskripsi_mobil', 'tahun_mobil', 'kapasitas_mobil', 'harga_mobil', 'warna_mobil', 'plat_no_mobil', 'foto_mobil', 'stok_mobil'
    ];

    // variable $fillable dimana ini berfungsi memberikan izin colom mana saja dari database users ini yang bisa kita pakai.

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
    
    ];
    // variable $hidden ini nanti berfungsi agar tidak ditampilkan ketika kita melakukan query untuk mendapatkan semua data dari colom yang ada di database users.

    protected $table = 'tb_mobil';
}
