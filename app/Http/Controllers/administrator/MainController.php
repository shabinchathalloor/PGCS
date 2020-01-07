<?php

namespace App\Http\Controllers\administrator;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;

class MainController extends Controller
{
    public function redirect(Request $request)
    {
    	if(\Auth::guard('admins')->user()) {

    		return redirect()->route('administrator::dashboard');
    	} else {
    		return redirect()->route('administrator::get_login2');
    	}
    }
    
}
