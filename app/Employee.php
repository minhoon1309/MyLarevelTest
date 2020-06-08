<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    public $timestamps = false;
    protected $table = "employees";

    public function business(){
        return $this->belongsTo('App\Business','business_id','id'); 
    }

    public function ticket(){
        return $this->belongsTo('App\Ticket','employee_id','id'); 
    }

    public function Task(){
        return $this->hasMany('App\EmployeeTask','employee_id','id'); 
    }
}
