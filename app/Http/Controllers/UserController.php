<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Carbon\Carbon;
use DateTimeZone;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    /**
     * Register new user
     *
     * @param $request Request
     */
    public function register(Request $request)
    {
        $hasher = app()->make('hash');

        $email = $request->input('email');
        $password = $hasher->make($request->input('password'));
        $nama = $request->input('nama');
        $nik = $request->input('nik');
        $no_telp = $request->input('no_telp');
        $jenis_kelamin = $request->input('jenis_kelamin');
        $alamat = $request->input('alamat');
        $foto = $request->input('foto');
        $level = 'user';


        $register = User::create([
            'email'=> $email,
            'password'=> $password,
            'nama'=> $nama,
            'nik'=> $nik,
            'no_telp'=> $no_telp,
            'jenis_kelamin'=> $jenis_kelamin,
            'alamat'=> $alamat,
            'foto'=> $foto,
            'level'=> $level,
        ]);

        if ($register) {
            $res['success'] = true;
            $res['message'] = 'Tambah user sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Tambah user gagal!';

            return response($res);
        }
    }

    /**
     * Get user by id
     *
     * URL /user/{id}
     */
    public function get_user(Request $request, $id_user)
    {
        $user = User::where('id_user', $id_user)->first();
        if (!$user) {
            $res['success'] = false;
            $res['message'] = 'User tidak ada!';
              
            return response($res);
        }else{
            if($request->input('api_token') == $user->api_token) {
                $res['success'] = true;
                $res['message'] = $user;
            }
        
            return response($res);
        }
    }

    public function get_user_by_mail(Request $request)
    {
        $email = $request->input('email');

        $user = User::where('email', $email)->first();
        if (!$user) {
            $res['success'] = false;
            $res['message'] = 'User tidak ada!';
              
            return response($res);
        }else{
            $res['success'] = true;
            $res['message'] = $user->email;
        
            return response($res);
        }
    }

    public function put_user(Request $request, $id_user)
    {

        $email = $request->input('email');
        $password = $request->input('password');
        $nama = $request->input('nama');
        $no_telp = $request->input('no_telp');
        
        $put_user = User::where('id_user', $id_user)->update([
            'email'=> $email,
            'password'=> $password,
            'nama'=> $nama,
            'no_telp'=> $no_telp
        ]);

        if ($put_user) {
            $res['success'] = true;
            $res['message'] = 'Update user sukses!';

            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = 'Update user gagal!';

            return response($res);
        }
    }

    public function reset_password(Request $request)
    {
        
        $email = $request->input('email');

        $reset_password = User::where('email', $email)->first();
        if(!$reset_password) {
            $res['success'] = false;
            $res['message'] = 'No users found';

            return response($res);
        } else {
            $reset_password_token = Crypt::encrypt($reset_password->id_user);
            User::where('id_user', $reset_password->id_user)->update([
                'reset_password_token' => $reset_password_token,
                'reset_password_expires' => Carbon::now(new DateTimeZone('Asia/Jakarta'))->add(1, 'hour')
            ]);

            $data = array(
                "name" => $reset_password->nama,
                "email" => $email,
                "url" => "http://localhost:3000/reset-password/" . $reset_password_token
            );
            Mail::send('emails.mail', $data, function($message) use($email) {
                $message->to($email)
                        ->subject('Account Reset Password');
                $message->from('noreply@kujangrentcar.com', 'Kujang Rent Car');
            });
            $res['success'] = true;
            $res['message'] = 'We sent an email to ' . $reset_password->email . ' with a link to reset password.';

            return response($res);

        }
    }

    public function updatePasswordViaEmail(Request $request, $reset_token)
    {
        $hasher = app()->make('hash');

        $password = $hasher->make($request->input('password'));

        try {
            $id_user = Crypt::decrypt($reset_token);
        } catch (DecryptException $e) {
            //
        }
        if( $id_user ) {
            $userCheck = User::where('id_user', $id_user)->first();
        }
        if( !$userCheck )  {
            $res['success'] = false;
            $res['message'] = 'Update password failed';

            return response($res);
        } else {
            $updatePasswordViaEmail = User::where('id_user', $id_user)->update([
                'password' => $password
            ]);

            if( $updatePasswordViaEmail ) {
                $res['success'] = true;
                $res['message'] = 'Password updated';

                return response($res);
            }
        }
    }

    public function tokenValidation(Request $request, $reset_token)
    {
        $tokenValidation = User::where('reset_password_token', $reset_token)->first();
        if( !$tokenValidation ) {
            $res['success'] = false;
            $res['message'] = 'Token invalid!';
            
            return response($res);
        } else {
            $now = Carbon::now(new DateTimeZone('Asia/Jakarta'));
            $expiresValidation = User::where('reset_password_expires', '>', $now)->first();
            if( $expiresValidation == null ) {
                $res['success'] = false;
                $res['message'] = 'Token invalid';

                return response($res);
            } else {
                $res['success'] = true;
                $res['message'] = 'Token valid';
                $res['email'] = $tokenValidation->email;
                
                return response($res);
            }

        }
     
    }

}