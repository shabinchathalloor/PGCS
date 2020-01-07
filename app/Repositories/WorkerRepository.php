<?php

namespace App\Repositories;
use App\Models\User;

use App\Worker;

class WorkerRepository
{
   
     public function getWorkers()
    {
     return	Worker::get();
    }
   

   


   
}
