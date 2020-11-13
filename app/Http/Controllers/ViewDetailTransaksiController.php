<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ViewDetailTransaksi;
use Illuminate\Support\Facades\DB;

class ViewDetailTransaksiController extends Controller
{
    /**
     * Get mobil
     *
     * URL /mobil
     */
    public function index()
    {
        $v_detail_transaksi = ViewDetailTransaksi::all();
        return response($v_detail_transaksi);
    }

    /**
     * Get mobil by id
     *
     * URL /transaksi/{id}
     */
    public function get_v_detail_transaksi(Request $request, $id_user)
    {
        $v_detail_transaksi = ViewDetailTransaksi::where('id_user', $id_user)->orderBy('id_detail_transaksi', 'DESC')->get();
        if ($v_detail_transaksi) {
              $res['success'] = true;
              $res['message'] = $v_detail_transaksi;
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'View Detail Transaksi tidak ada!';
        
          return response($res);
        }
    }

}