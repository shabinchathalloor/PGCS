<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
     protected $fillable= ['worker_id','complaint_id'];
}
