<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Complaint_detail extends Model
{
     protected $fillable = ['complaint_id','consumer_no','account_id','section','catagory','consumer_id','retail','connection_id','area'];
}
