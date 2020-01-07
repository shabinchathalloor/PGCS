<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;

class MainController extends Controller
{
    public function redirect(Request $request)
    {
    	//factory(\App\Models\Office::class, 50)->create();

    	if(\Auth::guard('users')->user()) {
    		return redirect()->route('admin::dashboard');
    	} else {
    		return redirect()->route('admin::get_login2');
    	}
    }
}
