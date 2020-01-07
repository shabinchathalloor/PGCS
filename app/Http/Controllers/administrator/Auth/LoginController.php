<?php

namespace App\Http\Controllers\administrator\Auth;

use Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:admins', ['except' => 'logout']);
    }

    public function showLoginForm()
    {
        return view('administrator.auth.login');
    }

    public function username()
    {
        return 'username';
    }

    public function login(Request $request)
    { 
        $this->validateLogin($request);

        if ($lockedOut = $this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        $credentials = $this->credentials($request);

        if ($this->guard()->attempt($credentials, $request->has('remember'))) {
            return $this->sendLoginResponse($request);
        }

        if (! $lockedOut) {
            $this->incrementLoginAttempts($request);
        }

        return $this->sendFailedLoginResponse($request);
    } 

    protected function authenticated(Request $request, $user)
    {
    
        return redirect()->route('administrator::dashboard');
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();

      
        return redirect()->route('administrator::main');
    }

    protected function guard()
    {
        return Auth::guard('admins');
    }

   
}
