<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    public $timestamps = false;
    protected $table = "departments";

    public function company(){
        return $this->belongsTo('App\Company','company_id','id'); 
    }

    public function business(){
        return $this->hasMany('App\Business','department_id','id'); 
    }

    public function permission(){
        return $this->hasOne('App\Permission','permission_id','id'); 
    }

    public function level(){
        return $this->hasOne('App\Level','level_id','id'); 
    }

    public function ticket(){
        return $this->belongsTo('App\Ticket','department_id','id'); 
    }
}
