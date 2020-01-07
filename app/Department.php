<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $fillable = ['name','username','gender','department','district','address','pincode','phone','email'];
}
