<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    public $timestamps = false;
    protected $table = "tasks";

    public function Employee(){
        return $this->hasMany('App\EmployeeTask','task_id','id'); 
    }
}
