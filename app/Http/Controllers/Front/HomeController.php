<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class HomeController extends Controller
{
    public function aboutUs()
    {

    	return view('front.home.about');
    }
    public function signUp()
    {

    	return view('front.home.signup');
    } 
    public function quickPay()
    {
    	return view('front.home.payment');
    } 
      public function hoMe()
    {
    	return view('front.home.index');
    } 
     public function signUpme()
    {
    	return view('front.home.form');
    } 

    public function signUpStore(Request $request)
    {
    	
    	   $this->validate($request,[
            'f_name'=>'required',
            'username'=>'required',
          	'email'=>'required|email',
          	'password'=>'required',
          	'con_password'=>'required||same:password'
            ]);
 
        $user= new User;
        $user->company_id=2;
        $user->location_id=1;
        $user->name =$request->f_name;
        $user->username=$request->username;
        $user->email=$request->email;
        $user->role='user';
        $user->phone=NULL;
        $user->department_id=NULL;
        $user->password=bcrypt($request->password);
        $user->status=1;
        $user->save();
        flash()->success('New User Created');
        return redirect()->route('front::home');
    }

}
