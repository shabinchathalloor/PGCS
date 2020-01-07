<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Complaint;
use App\Complaint_detail;
use App\Worker;
use App\Task;
use app\Models\User;

class ViewcomplaintController extends Controller
{
     public $complaints;
     public $complaint_details;
     public $complaint;


   public function getComplaints()
    {
     return Complaint::get();
    }

    public function index(Request $request)
    {
     
     $department_id = $request->user()->department_id ; 
     
       return view('user.complaint.index',[
         'complaints' =>Complaint::where('department_id',$department_id)->get(),
        ]);
    }
   

    public function show(Request $request,Complaint $complaint)
    {
        
        return view('user.complaint.show',[

                'complaint' => $complaint,
                'complaint_detail' => Complaint_detail::where('complaint_id',$complaint->id)->first(),

            ]);
    }


    public function edit(Request $request,Complaint $complaint)
    {
        

        $department_id = $request->user()->department_id ;
        return view('user.complaint.edit',[
            'complaint'=>$complaint,
            'workers' =>User::where('role','worker')->where('department_id',$department_id)->get(),
           'task'=>Task::where('complaint_id',$complaint->id)->first(),
            ]);

    }
    public function allotStore(Request $request)
    {
       // dd($request);
        $task_details= Task::where('complaint_id',$request->complaint_id)->first();
        if($task_details)
         {
            Task::where('complaint_id',$request->complaint_id)
            ->update(['worker_id'=>$request->worker]);
         }   
     else{
        $task= new Task;
        $task->worker_id=$request->worker;
        $task->complaint_id=$request->complaint_id;
        $task->save();
        }
        return redirect()->route('admin::complaint.index');
    }
    public function viewStatus(Request $request,Complaint $complaint)
    {
        return view('user.complaint.status',[

                'complaint' => $complaint,
                'status' => Status::where('complaint_id',$complaint->id)->first(),

            ]);
    }


}


    