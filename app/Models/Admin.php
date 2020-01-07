<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
//use Illuminate\Database\Eloquent\Builder;

class Admin extends Authenticatable
{
   /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name','username', 'email','phone', 'location','status', 'password'];

    protected $hidden = ['password','remember_token'];
     protected $casts = ['status'=>'boolean'];

}
