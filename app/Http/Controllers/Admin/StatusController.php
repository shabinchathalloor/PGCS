<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Complaint;
use App\Complaint_detail;
use App\Status;
class StatusController extends Controller
{

    public $complaint;


    public function getStatus()
    {
     return Status::get();
    }

    public function index(Request $request,Complaint $complaint)//to show status to admin
    {
        //dd($complaint);
        //dd($status);
        return view('user.complaint.status',[

                'complaints' => $complaint,
                'status' => Status::where('complaint_id',$complaint->id)->first(),

            ]);
        
    }
  
   
}


    