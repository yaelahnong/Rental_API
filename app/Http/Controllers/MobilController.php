<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mobil;

class MobilController extends Controller
{
    /**
     * Get mobil
     *
     * URL /mobil
     */
    public function index()
    {
        $mobil = Mobil::where('status_mobil', 1)->get();
        return response($mobil);
    }

    /**
     * Get mobil by id
     *
     * URL /mobil/{id}
     */
    public function get_mobil(Request $request, $id_mobil)
    {
        $mobil = Mobil::where('id_mobil', $id_mobil)->get();
        if ($mobil) {
              $res['success'] = true;
              $res['message'] = $mobil;
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'Mobil tidak ada!';
        
          return response($res);
        }
    }

    public function post_mobil(Request $request)
    {

        $nama_mobil = $request->input('nama_mobil');
        $merk_mobil = $request->input('merk_mobil');
        $transmisi_mobil = $request->input('transmisi_mobil');
        $deskripsi_mobil = $request->input('deskripsi_mobil');
        $tahun_mobil = $request->input('tahun_mobil');
        $kapasitas_mobil = $request->input('kapasitas_mobil');
        $harga_mobil = $request->input('harga_mobil');
        $warna_mobil = $request->input('warna_mobil');
        $plat_no_mobil = $request->input('plat_no_mobil');
        $status_mobil = $request->input('status_mobil');
        $foto_mobil = $request->input('foto_mobil');


        $post_mobil = Mobil::create([
            'nama_mobil'=> $nama_mobil,
            'merk_mobil'=> $merk_mobil,
            'transmisi_mobil'=> $transmisi_mobil,
            'deskripsi_mobil'=> $deskripsi_mobil,
            'tahun_mobil'=> $tahun_mobil,
            'kapasitas_mobil'=> $kapasitas_mobil,
            'harga_mobil'=> $harga_mobil,
            'warna_mobil'=> $warna_mobil,
            'plat_no_mobil'=> $plat_no_mobil,
            'status_mobil'=> $status_mobil,
            'foto_mobil'=> $foto_mobil,
        ]);

        if ($post_mobil) {
            $res['success'] = true;
            $res['message'] = 'Tambah mobil sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Tambah mobil gagal!';

            return response($res);
        }
    }

    public function put_mobil(Request $request, $id_mobil)
    {

        $nama_mobil = $request->input('nama_mobil');
        $merk_mobil = $request->input('merk_mobil');
        $transmisi_mobil = $request->input('transmisi_mobil');
        $deskripsi_mobil = $request->input('deskripsi_mobil');
        $tahun_mobil = $request->input('tahun_mobil');
        $kapasitas_mobil = $request->input('kapasitas_mobil');
        $harga_mobil = $request->input('harga_mobil');
        $warna_mobil = $request->input('warna_mobil');
        $plat_no_mobil = $request->input('plat_no_mobil');
        $status_mobil = $request->input('status_mobil');
        $foto_mobil = $request->input('foto_mobil');

        $put_mobil = Mobil::where('id_mobil', $id_mobil)->update([
            'nama_mobil'=> $nama_mobil,
            'merk_mobil'=> $merk_mobil,
            'transmisi_mobil'=> $transmisi_mobil,
            'deskripsi_mobil'=> $deskripsi_mobil,
            'tahun_mobil'=> $tahun_mobil,
            'kapasitas_mobil'=> $kapasitas_mobil,
            'harga_mobil'=> $harga_mobil,
            'warna_mobil'=> $warna_mobil,
            'plat_no_mobil'=> $plat_no_mobil,
            'status_mobil'=> $status_mobil,
            'foto_mobil'=> $foto_mobil,
        ]);

        if ($put_mobil) {
            $res['success'] = true;
            $res['message'] = 'Update mobil sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Update mobil gagal!';

            return response($res);
        }
    }

    public function delete_mobil(Request $request, $id_mobil)
    {
        $delete_mobil = Mobil::where('id_mobil', $id_mobil)->delete();
        if ($delete_mobil) {
              $res['success'] = true;
              $res['message'] = 'Hapus mobil berhasil!';
        
              return response($res);
        }else{
          $res['success'] = false;
          $res['message'] = 'Hapus mobil gagal!';
        
          return response($res);
        }
    }

}