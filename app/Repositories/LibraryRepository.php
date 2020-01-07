<?php

namespace App\Repositories;
use App\Models\User;

use App\Library;

class LibraryRepository
{
   
     public function getLibrary()
    {
     return	Library::get();
    }
   

   


   
}
