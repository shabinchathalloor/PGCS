<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use app\Models\User;
use App\Complaint;
use App\Complaint_detail;
use App\Worker;
use App\Task;
use App\Status;

class TaskController extends Controller
{
     public $complaints;
     public $Complaint;
     public $user;

   public function getComplaints()
    {
     return Complaint::get();
    }

    public function index(Request $request)
    {

       return view('user.task.index',[
         'tasks' =>Task::where('worker_id',$request->user()->id)->get(),
        ]);
    }
   

    public function show(Request $request,Complaint $complaint)
    {
        
        return view('user.task.show',[

                'complaint' => $complaint,
                'complaint_detail' => Complaint_detail::where('complaint_id',$complaint->id)->first(),

            ]);
    }

    public function edit(Request $request,Complaint $complaint,User $user)
    {
        //dd($request);
        return view('user.task.status',[
            'complaint'=>$complaint,
            'user'=>$user,
            ]);

    }

    public function statusStore(Request $request)
    {
       //dd($request);
        $status= new Status;
        $status->user_id=$request->user_id;
        $status->complaint_id=$request->complaint_id;
        $status->status=$request->status;
        $status->service=$request->service;
        $status->save();
        return redirect()->route('admin::task.index');
    }
}


    