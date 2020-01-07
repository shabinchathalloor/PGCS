<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Models\Complaint;
use App\Models\Complaint_detail;
use App\Response;
use App\Status;

class DashboardController extends Controller
{
	public function index()
	{
		return view('front.home.dashboard');
	}
	public function complaintRegistration()
	{
		return view('front.home.registration');
	}
		public function feedBack()
	{
		return view('front.home.feedback');
	}
	public function viewStatus(Request $request,Complaint $complaint)
	{
		//dd($request->user());
		 $user_id = $request->user()->id; 
		return view('front.home.status',[
         'status' =>Status::where('user_id',$user_id)->first(),
        ]);
		// return view('front.home.status',[
		// 	'complaint'=>$complaint,
  //        'status' =>Status::where('complaint_id',$complaint->id)->first(),
  //       ]);

	}
	 public function registerStore(Request $request)
	 {

    	   $this->validate($request,[
            'name'=>'required',
            'adhaar'=>'required',
          	'email'=>'required|email',
          	'description'=>'required',
          	'mobile'=>'required'
            ]);
 		 //dd($request);
 	
        $complaint= new Complaint;
        $complaint->user_id=$request->user()->id;
        $complaint->name =$request->name;
        $complaint->adhaar =$request->adhaar;
        $complaint->type =$request->type;
        $complaint->department_id =$request->department;
        $complaint->district =$request->district;
        $complaint->address =$request->address;
 		$complaint->email=$request->email;
 		$complaint->mobile=$request->mobile;
 		$complaint->description=$request->description;
        $complaint->save();
       // dd($complaint);
        $complaint_detail= new Complaint_detail;
	 	$complaint_detail->complaint_id=$complaint->id;
	 	$complaint_detail->consumer_no=$request->consumer_no;
	 	$complaint_detail->consumer_name=$request->consumer_name;
	 	$complaint_detail->account_id=$request->account_id;
	 	$complaint_detail->section=$request->section;
	 	$complaint_detail->catagory=$request->catagory;
	 	$complaint_detail->consumer_id=$request->consumer_id;
	 	$complaint_detail->retail=$request->retail;
	 	$complaint_detail->connection_id=$request->connection_id;
	 	$complaint_detail->area=$request->area;
	 	$complaint_detail->save();
        
        return redirect()->route('front::dashboard');
	 }
	 public function feedbackStore(Request $request)
	 {
	 	$response= new Response;
	 	$response->name=$request->name;
	 	$response->adhaar=$request->adhaar;
	 	$response->department_id=$request->department;
	 	$response->phone=$request->phone;
	 	$response->feedback=$request->feedback;
	 	$response->save();
	 	return redirect()->route('front::dashboard');
	 }
	
	
}