<?php

namespace App\Http\Controllers\administrator;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;

class DashboardController extends Controller
{
	public function index()
	{
		return view('administrator.dashboard.index');
	}
	public function getSession(Request $request)
	{
		$request->session()->forget('location_id');
		$request->session()->put('location_id',$request->location);

		return redirect()->back();
		
	}
}