<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Laravel\Lumen\Auth\Authorizable;

class ViewDetailTransaksi extends Model implements AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'kode_transaksi', 'id_detail_transaksi', 'id_user', 'id_mobil', 'id_mobil', 
        'nama', 'tgl_order', 'total', 'tgl_pembayaran', 'status_pembayaran', 
        'status_transaksi', 'nama_mobil', 'merk_mobil', 'plat_no_mobil', 'tgl_sewa', 
        'tgl_akhir_penyewaan', 'tgl_pengembalian', 'harga_mobil', 'denda'
    ];

    // variable $fillable dimana ini berfungsi memberikan izin colom mana saja dari database users ini yang bisa kita pakai.

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [

    ];

    protected $table = 'v_detail_transaksi';
    // variable $hidden ini nanti berfungsi agar tidak ditampilkan ketika kita melakukan query untuk mendapatkan semua data dari colom yang ada di database users.
}
