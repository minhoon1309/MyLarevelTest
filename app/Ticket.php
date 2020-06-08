<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    public $timestamps = false;
    protected $table = "tickets";

    public function customer(){
        return $this->belongsTo('App\Customer','customer_id','id'); 
    }

    public function department(){
        return $this->belongsTo('App\Department','department_id','id'); 
    }

    public function employee(){
        return $this->belongsTo('App\Employee','employee_id','id'); 
    }

}
