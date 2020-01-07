<?php

namespace App\Repositories;
use App\Models\User;

use App\New_department;

class New_departmentRepository
{
   
     public function getNew_departments()
    {
     return	New_department::get();
    }
   

   


   
}
