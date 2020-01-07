<?php

namespace App\Repositories;
use App\Models\User;

use App\Department;

class DepartmentRepository
{
   
     public function getDepartments()
    {
     return	Department::get();
    }
   

   


   
}
