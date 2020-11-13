<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DetailTransaksi;
use Illuminate\Support\Facades\DB;

class DetailTransaksiController extends Controller
{
    /**
     * Get mobil
     *
     * URL /mobil
     */
    public function index()
    {
        $detail_transaksi = DetailTransaksi::all();
        return response($detail_transaksi);
    }

    /**
     * Get mobil by id
     *
     * URL /transaksi/{id}
     */
    public function get_detail_transaksi(Request $request, $id_detail_transaksi)
    {
        $detail_transaksi = DetailTransaksi::where('id_detail_transaksi', $id_detail_transaksi)->get();
        if ($detail_transaksi) {
              $res['success'] = true;
              $res['message'] = $detail_transaksi;
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'Detail transaksi tidak ada!';
        
          return response($res);
        }
    }

    // Create Transaksi

    public function post_detail_transaksi(Request $request)
    {
        $count = DB::table('tb_detail_transaksi')->max('id_detail_transaksi');
        $kode = $count + 1;
        $kode_transaksi = "TRX-".date("YmdHm")."-".$kode;
        $id_mobil = $request->input('id_mobil');
        $tgl_sewa = $request->input('tgl_sewa');
        $tgl_akhir_penyewaan = $request->input('tgl_akhir_penyewaan');
        $tgl_pengembalian = $request->input('tgl_pengembalian');
        $denda = $request->input('denda');
        $total = $request->input('total');
        $status = $request->input('status');

        $post_detail_transaksi = DetailTransaksi::create([
            'kode_transaksi'=> $kode_transaksi,
            'id_mobil'=> $id_mobil,
            'tgl_sewa'=> $tgl_sewa,
            'tgl_akhir_penyewaan'=> $tgl_akhir_penyewaan,
            'tgl_pengembalian'=> $tgl_pengembalian,
            'denda'=> $denda,
            'total'=> $total,
            'status'=> $status
        ]);

        if ($post_detail_transaksi) {
            $res['success'] = true;
            $res['message'] = 'Tambah detail transaksi sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Tambah detail transaksi sukses!';

            return response($res);
        }
    }

    public function put_detail_transaksi(Request $request, $id_detail_transaksi)
    {
        $kode_transaksi = $request->input('kode_transaksi');
        $id_mobil = $request->input('id_mobil');
        $tgl_sewa = $request->input('tgl_sewa');
        $tgl_akhir_penyewaan = $request->input('tgl_akhir_penyewaan');
        $tgl_pengembalian = $request->input('tgl_pengembalian');
        $denda = $request->input('denda');
        $total = $request->input('total');
        $status = $request->input('status');

        $put_detail_transaksi = DetailTransaksi::where('id_detail_transaksi', $id_detail_transaksi)->update([
            'kode_transaksi'=> $kode_transaksi,
            'id_mobil'=> $id_mobil,
            'tgl_sewa'=> $tgl_sewa,
            'tgl_akhir_penyewaan'=> $tgl_akhir_penyewaan,
            'tgl_pengembalian'=> $tgl_pengembalian,
            'denda'=> $denda,
            'total'=> $total,
            'status'=> $status
        ]);

        if ($put_detail_transaksi) {
            $res['success'] = true;
            $res['message'] = 'Update detail transaksi sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Update detail transaksi gagal!';

            return response($res);
        }
    }

    public function delete_detail_transaksi(Request $request, $id_detail_transaksi)
    {
        $delete_detail_transaksi = DetailTransaksi::where('id_detail_transaksi', $id_detail_transaksi)->delete();
        if ($delete_detail_transaksi) {
              $res['success'] = true;
              $res['message'] = 'Hapus detail transaksi berhasil!';
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'Gagal hapus detail transaksi!';
        
          return response($res);
        }
    }

}