<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    protected $fillable= ['user_id','complaint_id','status','service'];
}
