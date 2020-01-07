<?php

namespace App\Http\Controllers\administrator;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\WorkerRepository;
use App\Worker;
use App\Models\User;

class WorkerController extends Controller
{
     public $workers;

    public function __construct(WorkerRepository $workers)
    {
        $this->workers = $workers;
    }

    public function index(Request $reuest)
    {
       return view('administrator.worker.index',[
         'workers' =>($this->workers->getWorkers()),
        ]);
    }

    public function create()
    {
    	return view('administrator.worker.create');
    }
 public function store(Request $request)
    {

        $this->validate($request,[
            'name'=>'required',
            'phone'=>'required|numeric|min:10',
            'email'=>'required|email',
            ]);
       // dd($request);
        $worker= new Worker;
        $worker->name=$request->name;
        $worker->username=$request->username;
        $worker->gender=$request->gender;
        $worker->department= $request->sdepartment;
        $worker->district=$request->district;
        $worker->designation=$request->designation;
        $worker->phone=$request->phone;
        $worker->email=$request->email;
        $worker->save();
        $user= new User;
        $user->company_id=2;
        $user->location_id=1;
        $user->name =$request->name;
        $user->username=$request->name;
        $user->gender=$request->gender;
        $user->district=$request->district;
        $user->designation=$request->designation;
        $user->email=$request->email;
        $user->role='worker';
        $user->phone=$request->phone;
        $user->password=bcrypt($request->username);
        $user->status=1;
        $user->save();
        flash()->success('Worker successfully added');
         return redirect()->route('administrator::worker.index');
    }

    public function edit(Request $request,Worker $worker)
    {
        return view('user.worker.edit',[

                'worker' => $worker,
            ]);
    }

    public function update(Request $request,Worker $worker)
    {
       // dd($department);
        $worker->name=$request->name;
        $worker->username=$request->username;
        $worker->gender=$request->gender;
        $worker->department=$request->sdepartment;
        $worker->district=$request->district;
        $worker->designation=$request->designation;
        $worker->phone=$request->phone;
        $worker->email=$request->email;
        $worker->save();
     
        flash()->success('Worker updated successfully');
        return redirect()->route('administrator::worker.index');
        
    }

    public function destroy(Request $request,Worker $worker) 
    {
       $worker->delete();
       flash()->success('Worker deleted successfully');
       return redirect()->back();
       

    }
}


