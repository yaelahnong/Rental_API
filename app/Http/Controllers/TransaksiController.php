<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaksi;
use Illuminate\Support\Facades\DB;

class TransaksiController extends Controller
{
    /**
     * Get mobil
     *
     * URL /mobil
     */
    public function index()
    {
        $transaksi = Transaksi::all();
        return response($transaksi);
    }

    /**
     * Get mobil by id
     *
     * URL /transaksi/{id}
     */
    public function get_transaksi(Request $request, $kode_transaksi)
    {
        $transaksi = Transaksi::where('kode_transaksi', $kode_transaksi)->get();
        if ($transaksi) {
              $res['success'] = true;
              $res['message'] = $transaksi;
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'Transaksi tidak ada!';
        
          return response($res);
        }
    }

    public function get_transaksi_user(Request $request, $id_user)
    {
        $userCheck = DB::table('tb_users')->where('id_user', $id_user)->first();
        $transaksi_user = Transaksi::where('id_user', $id_user)->orderBy('tgl_order', 'DESC')->first();
        if ($transaksi_user) {
            if($request->input('api_token') == $userCheck->api_token) {
                $res['success'] = true;
                $res['message'] = $transaksi_user;
            }
            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Transaksi tidak ada!';
        
            return response($res);
        }
    }

    // Create Transaksi

    public function post_transaksi(Request $request)
    {
        $count = DB::table('tb_detail_transaksi')->max('id_detail_transaksi');
        $kode = $count + 1;
        $kode_transaksi = "TRX-".date("YmdHm")."-".$kode;
        $id_user = $request->input('id_user');
        $tgl_order = $request->input('tgl_order');
        $total_pembayaran = $request->input('total_pembayaran');
        $tgl_pembayaran = $request->input('tgl_pembayaran');
        $status_pembayaran = $request->input('status_pembayaran');
        $status_transaksi = $request->input('status_transaksi');

        $post_transaksi = Transaksi::create([
            'kode_transaksi'=> $kode_transaksi,
            'id_user'=> $id_user,
            'tgl_order'=> $tgl_order,
            'total_pembayaran'=> $total_pembayaran,
            'tgl_pembayaran'=> $tgl_pembayaran,
            'status_pembayaran'=> $status_pembayaran,
            'status_transaksi'=> $status_transaksi,
        ]);

        if ($post_transaksi) {
            $res['success'] = true;
            $res['message'] = 'Tambah transaksi sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Tambah transaksi gagal!';

            return response($res);
        }
    }

    public function put_transaksi(Request $request, $kode_transaksi)
    {   
        $id_user = $request->input('id_user');
        $tgl_order = $request->input('tgl_order');
        $total_pembayaran = $request->input('total_pembayaran');
        $tgl_pembayaran = $request->input('tgl_pembayaran');
        $status_pembayaran = $request->input('status_pembayaran');
        $status_transaksi = $request->input('status_transaksi');

        $put_transaksi = Transaksi::where('kode_transaksi', $kode_transaksi)->update([
            'id_user'=> $id_user,
            'tgl_order'=> $tgl_order,
            'total_pembayaran'=> $total_pembayaran,
            'tgl_pembayaran'=> $tgl_pembayaran,
            'status_pembayaran'=> $status_pembayaran,
            'status_transaksi'=> $status_transaksi,
        ]);

        if ($put_transaksi) {
            $res['success'] = true;
            $res['message'] = 'Update transaksi sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Update transaksi gagal!';

            return response($res);
        }
    }

    public function delete_transaksi(Request $request, $kode_transaksi)
    {
        $delete_transaksi = Transaksi::where('kode_transaksi', $kode_transaksi)->delete();
        if ($delete_transaksi) {
              $res['success'] = true;
              $res['message'] = 'Hapus transaksi berhasil!';
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'Hapus transaksi gagal!';
        
          return response($res);
        }
    }

}