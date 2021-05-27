<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Policy;
use App\RentalRequirements;

class RentalInfoController extends Controller
{
    public function index(Request $request)
    {
        $RentalPolicy = Policy::all();
        $RentalRequirements = RentalRequirements::all();
        if($RentalPolicy && $RentalRequirements) {
            $res['success'] = true;
            $res['policy'] = $RentalPolicy;
            $res['requirements'] = $RentalRequirements;

            return response($res);
        } else {
            $res['success'] = false;
            $res['message'] = 'Data not found';

            return response($res);
        }
    }    
}