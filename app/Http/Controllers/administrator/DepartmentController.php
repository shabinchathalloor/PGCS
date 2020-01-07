<?php

namespace App\Http\Controllers\administrator;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\DepartmentRepository;
use App\Department;
use App\Models\User;

class DepartmentController extends Controller
{

	 public $departments;

    public function __construct(DepartmentRepository $departments)
    {
        $this->departments = $departments;
    }

    public function index(Request $reuest)
    {
       return view('administrator.department.index',[
         'departments' =>($this->departments->getDepartments()),
        ]);
    }

    public function create()
    {
    	return view('administrator.department.create');
    }

    public function store(Request $request)
    {

        $this->validate($request,[
            'name'=>'required',
            'phone'=>'required|numeric|min:10',
            'email'=>'required|email',
            ]);
       // dd($request);
        $department= new Department;
        $department->name=$request->name;
        $department->username=$request->username;
        $department->gender=$request->gender;
        $department->dept= $request->sdepartment;
        $department->district=$request->district;
        $department->address=$request->address;
        $department->pincode=$request->pincode;
        $department->phone=$request->phone;
        $department->email=$request->email;
        $department->save();
        $user= new User;
        $user->company_id=2;
        $user->location_id=1;
        $user->name =$request->name;
        $user->username=$request->name;
        $user->email=$request->email;
        $user->role='DH';
        $user->phone=NULL;
        $user->department_id=$request->sdepartment;
        $user->password=bcrypt($request->username);
        $user->status=1;
        $user->save();

        flash()->success('Department Head successfully added');
         return redirect()->route('administrator::department.index');
    }

    public function edit(Request $request,Department $department)
    {
        return view('administrator.department.edit',[

                'department' => $department,
            ]);
    }

    public function update(Request $request,Department $department)
    {
       // dd($department);
        $department->name=$request->name;
        $department->username=$request->username;
        $department->gender=$request->gender;
        $department->dept=$request->sdepartment;
        $department->district=$request->district;
        $department->address=$request->address;
        $department->pincode=$request->pincode;
        $department->phone=$request->phone;
        $department->email=$request->email;
        $department->save();
        flash()->success('Department Head updated successfully');
        return redirect()->route('administrator::department.index');
        
    }

    public function destroy(Request $request,Department $department) 
    {
       $department->delete();
       flash()->success('Department Head deleted successfully');
       return redirect()->back();
       

    }
}
