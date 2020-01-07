<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Response;

class FeedbackController extends Controller
{
     public $complaints;
     public $complaint_details;

   public function getFeedbacks()
    {
     return Response::get();
    }

    public function index(Request $request)
    {
     
     $department_id = $request->user()->department_id ; 
     
       return view('user.feedback.index',[
         'feedbacks' =>Response::where('department_id',$department_id)->get(),
        ]);
    }
   
    public function destroy(Request $request,Response $feedback) 
    {
       $feedback->delete();
       flash()->success('feedback deleted successfully');
       return redirect()->back();
       

    }

  
}


    