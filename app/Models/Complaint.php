<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Complaint extends Model
{
    protected $fillable = ['user_id','name','adhaar','type','department_id','district','address','email','mobile','description'];
}
