<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;

class User extends Model implements AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'email', 'password', 'nama', 'no_telp'
    ];

    // variable $fillable dimana ini berfungsi memberikan izin colom mana saja dari database users ini yang bisa kita pakai.

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'api_token', 'level', 'reset_password_token', 'reset_password_expires'
    ];

    protected $table = 'tb_users';
    // variable $hidden ini nanti berfungsi agar tidak ditampilkan ketika kita melakukan query untuk mendapatkan semua data dari colom yang ada di database users.
}
