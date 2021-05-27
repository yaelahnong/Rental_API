<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bank;

class BankController extends Controller
{
    public function index(Request $request)
    {
        $bank = Bank::all();
        if($bank) {
            $res['success'] = true;
            $res['message'] = $bank;

            return response($res);
        } else {
            $res['success'] = false;
            $res['message'] = 'Data not found';

            return response($res);
        }
    }    
}