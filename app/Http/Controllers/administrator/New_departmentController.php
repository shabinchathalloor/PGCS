<?php

namespace App\Http\Controllers\administrator;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\New_departmentRepository;
use App\New_department;

class New_departmentController extends Controller
{
     public function __construct(New_departmentRepository $new_departments)
    {
        $this->new_departments = $new_departments;
    }

    public function index(Request $reuest)
    {
       return view('administrator.new_department.index',[
         'new_departments' =>($this->new_departments->getNew_departments()),
        ]);
    }

    public function create()
    {
    	return view('administrator.new_department.create');
    }
    public function store(Request $request)
    {

        $this->validate($request,[
            'deptname'=>'required',
            'phone'=>'required|numeric|min:10',
            'email'=>'required|email',
            ]);
       // dd($request);
        $new_department= new New_department;
        $new_department->deptname=$request->deptname;
        $new_department->district=$request->district;
        $new_department->address=$request->address;
        $new_department->phone=$request->phone;
        $new_department->email=$request->email;
        $new_department->save();
        flash()->success('Department  successfully added');
         return redirect()->route('administrator::new_department.index');
    }
      public function edit(Request $request,New_department $new_department)
    {
        return view('user.new_department.edit',[

                'new_department' => $new_department,
            ]);
    }

    public function update(Request $request,New_department $new_department)
    {
       // dd($department);
        $new_department->deptname=$request->deptname;
        $new_department->district=$request->district;
        $new_department->address=$request->address;
     
        $new_department->phone=$request->phone;
        $new_department->email=$request->email;
        $new_department->save();
        flash()->success('Department updated successfully');
        return redirect()->route('administrator::new_department.index');
        
    }

    public function destroy(Request $request,New_department $new_department) 
    {
       $new_department->delete();
       flash()->success('Department deleted successfully');
       return redirect()->back();
       

    }
}
