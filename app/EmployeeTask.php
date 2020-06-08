<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeTask extends Model
{
    public $timestamps = false;
        protected $table = "employee_task";

        public function taskEmployee(){
            return $this->belongsTo('App\Task','task_id','id'); 
        }

        public function employeeTask(){
            return $this->belongsTo('App\Employee','employee_id','id'); 
        }

}
