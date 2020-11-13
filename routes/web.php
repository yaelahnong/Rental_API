<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


$router->get('/', function () use ($router) {
    $res['success'] = true;
    $res['result'] = "Web API Lumen";
    return response($res);
});

$router->post('/login', 'LoginController@index');
$router->post('/register', 'UserController@register');
$router->post('/forgot_password', 'UserController@reset_password');

$router->get('/user/{id_user}', ['middleware' => 'auth', 'uses' => 'UserController@get_user']);
$router->post('/getUserByMail', 'UserController@get_user_by_mail');
// $router->put('/user/{id_user}', ['middleware' => 'auth', 'uses' => 'UserController@put_user']);
// $router->delete('/user/{id_user}', ['middleware' => 'auth', 'uses' => 'UserController@delete_user']);
$router->put('/updatePasswordViaEmail/{reset_token}', 'UserController@updatePasswordViaEmail');
$router->get('/reset/{reset_token}', 'UserController@tokenValidation');

$router->get('/mobil', ['middleware' => 'auth', 'uses' => 'MobilController@index']);
$router->get('/mobil/{id_mobil}', ['middleware' => 'auth', 'uses' => 'MobilController@get_mobil']);
$router->post('/mobil', ['middleware' => 'auth', 'uses' => 'MobilController@post_mobil']);
$router->put('/mobil/{id_mobil}', ['middleware' => 'auth', 'uses' => 'MobilController@put_mobil']);
$router->delete('/mobil/{id_mobil}', ['middleware' => 'auth', 'uses' => 'MobilController@delete_mobil']);

// $router->get('/transaksi', ['middleware' => 'auth', 'uses' => 'TransaksiController@index']);
// $router->get('/transaksi/{kode_transaksi}', ['middleware' => 'auth', 'uses' => 'TransaksiController@get_transaksi']);
$router->get('/transaksi/{id_user}', ['middleware' => 'auth', 'uses' => 'TransaksiController@get_transaksi_user']);
$router->post('/transaksi', ['middleware' => 'auth', 'uses' => 'TransaksiController@post_transaksi']);
$router->put('/transaksi/{kode_transaksi}', ['middleware' => 'auth', 'uses' => 'TransaksiController@put_transaksi']);
$router->delete('/transaksi/{kode_transaksi}', ['middleware' => 'auth', 'uses' => 'TransaksiController@delete_transaksi']);

// $router->get('/detail_transaksi', ['middleware' => 'auth', 'uses' => 'DetailTransaksiController@index']);
// $router->get('/detail_transaksi/{id_detail_transaksi}', ['middleware' => 'auth', 'uses' => 'DetailTransaksiController@get_detail_transaksi']);
$router->post('/detail_transaksi', ['middleware' => 'auth', 'uses' => 'DetailTransaksiController@post_detail_transaksi']);
$router->put('/detail_transaksi/{id_detail_transaksi}', ['middleware' => 'auth', 'uses' => 'DetailTransaksiController@put_detail_transaksi']);
$router->delete('/detail_transaksi/{id_detail_transaksi}', ['middleware' => 'auth', 'uses' => 'DetailTransaksiController@delete_detail_transaksi']);

$router->get('/details', ['middleware' => 'auth', 'uses' => 'ViewDetailTransaksiController@index']);
$router->get('/details/{id_user}', ['middleware' => 'auth', 'uses' => 'ViewDetailTransaksiController@get_v_detail_transaksi']);