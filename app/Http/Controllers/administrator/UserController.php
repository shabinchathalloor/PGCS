<?php

namespace App\Http\Controllers\administrator;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Location;
use App\Repositories\UserRepository;

class UserController extends Controller
{
    public $users;

    public function __construct(UserRepository $users)
    {
        $this->users = $users;
    }

    public function index(Request $request)
    {

        if(\Auth::guard('users')->user()->role!='CM')
        {
            return view('user.users.lm.index', [
                'users' => $this->users->getAll2(),

                ]);
        } 
        else 
        {
            return view('user.users.cm.index', [
                'users' => $this->users->getAll2(),
                ]);
        } 
    }

    public function create()
    {

        if(\Auth::guard('users')->user()->role!='CM')
        {

            return view('user.users.lm.create');
        }   
        else
        {
            return view('user.users.cm.create');
        }
    }

    public function store(\App\Http\Requests\User\StoreRequest $request)
    {
        \DB::beginTransaction();
        try {
            $user = $this->users->createUser($request->all(), $request->user());
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('front::managers.index');
        }
        \DB::commit();
        flash()->success('Manager Created');
        return redirect()->route('front::managers.index');
    }



    public function updateStatus(Request $request)
    {
        \DB::beginTransaction();
        try {
            if($request->value==1)
            {
                User::where('id', $request->id)
                ->update(['status' => 0]);

            } 
            else
            {
                User::where('id', $request->id)
                ->update(['status' => 1]);


            }
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('front::managers.index');
        }
        \DB::commit();


    }

    public function getPassword(Request $request, User $user)
    {
// $this->authorize('modify', $user);
        return view('user.users.cm.password', [
            'puser' => $user,
            ]);
    }

    public function postPassword(Request $request, User $user)
    {
        \DB::beginTransaction();
        try {
            $user = $this->users->changePassword($request->all(), $user);
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('front::managers.index');
        }
        \DB::commit();
        flash()->success('Password Changed');
        return redirect()->route('front::managers.index');
    }

    public function edit(Request $request, User $user)
    { 

        if(\Auth::guard('users')->user()->role=='CM')

        {
            return view('user.users.cm.edit', [
                'suser' => $user,

                ]);
        }  
    }

    public function update(Request $request, User $user)
    {
        \DB::beginTransaction();
        try {
            if($user->role=='CM')
            {
                $user->location_id =Session()->get('location_id');
                $user->username = $request['username'];
                $user->name = $request['name'];
                $user->email = $request['email'];
                $user->phone = $request['phone'];
                $user->role = $request['role'];
                $user->save();


            }
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('front::managers.index');
        }
        \DB::commit();
        flash()->success('Manager Updated');
        return redirect()->route('front::managers.index');
    }

    public function destroy(Request $request, User $user)
    {
        \DB::beginTransaction();
        try {
            $user->delete();
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('front::managers.index');
        }
        \DB::commit();
        flash()->success('Manager Deleted');
        return redirect()->route('front::managers.index');
    }
}
