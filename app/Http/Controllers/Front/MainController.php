<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;

class MainController extends Controller
{
    public function redirect(Request $request)
    {
    	//factory(\App\Models\Office::class, 50)->create();
		if(\Auth::guard('users')->user()) {
    		return redirect()->route('administrator::dashboard');
    	} else {
    		return redirect()->route('administrator::get_login2');
    	}
    }

    public function index()
    {
    	return view('front.home.index');
    }
}
