<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Business extends Model
{
    public $timestamps = false;
    protected $table = "business";

    public function department(){
        return $this->belongsTo('App\Department','department_id','id'); 
    }

    public function permission(){
        return $this->belongsTo('App\Permission','permission_id','id'); 
    }

    public function employee(){
        return $this->hasMany('App\Employee','business_id','id'); 
    }
}
