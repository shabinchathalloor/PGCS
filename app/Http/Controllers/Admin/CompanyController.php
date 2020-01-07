<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\User;
use App\Models\Location;
use App\Models\Service;
use App\Repositories\Admin\CompanyRepository;

class CompanyController extends Controller
{
    public $companies;

    public function __construct(CompanyRepository $companies)
    {
        $this->companies = $companies;
    }

    public function index()
    {
        return view('admin.company.index',[
            'companies' => $this->companies->getAll(),
            ]);
    }

    public function create()
    {
        return view('admin.company.create',[

            'zones' => timezone_identifiers_list(),


            ]);
    }

    public function store(\App\Http\Requests\Company\StoreRequest $request)
    {
        \DB::beginTransaction();
        try {
            $company = $this->companies->createCompany($request->all());
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('admin::companies.index');
        }
        \DB::commit();
        flash()->success('Company Created');
        return redirect()->route('admin::companies.index');
    }

    public function edit(Request $request, Company $company)
    {
        return view('admin.company.edit', [
            'company' => $company,
            'zones' => timezone_identifiers_list(),
            ]);
    }

    public function update(Request $request, Company $company)
    {
        \DB::beginTransaction();
        try {
            $company = $this->companies->updateCompany($request->all(), $company);
        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('admin::companies.index');
        }
        \DB::commit();
        flash()->success('Company Updated');
        return redirect()->route('admin::companies.index');
    }

    public function destroy(Request $request, Company $company)
    {
        \DB::beginTransaction();
        try {
            $company->delete();

            Location::where('company_id', $company->id)->delete();
            User::where('company_id', $company->id)->delete();

        } catch(\Exception $e){
            \DB::rollBack();
            flash()->success('Something went wrong!');
            return redirect()->route('admin::companies.index');
        }
        \DB::commit();
        flash()->success('Company Deleted');
        return redirect()->route('admin::companies.index');
    }

    public function updateStatuss(Request $request)
    {
        \DB::beginTransaction();
        try {
            if($request->value==1)
            {
                Company::where('id', $request->id)
                ->update(['status' => 0]);

                Location::where('company_id', $request->id)
                ->update(['status' => 0]);

                User::where('company_id', $request->id)
                ->update(['status' => 0]);
            } 
            else
            {
                Company::where('id', $request->id)
                ->update(['status' => 1]);

                Location::where('company_id', $request->id)
                ->update(['status' => 1]);

                User::where('company_id', $request->id)
                ->update(['status' => 1]);
            }
        } catch(\Exception $e){
            \DB::rollBack();
        }
        \DB::commit();

    }

}
