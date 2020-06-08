<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    public $timestamps = false;
    protected $table = "permission";

    public function department(){
        return $this->hasMany('App\Department','permission_id','id'); 
    }

    public function business(){
        return $this->hasMany('App\Business','permission_id','id'); 
    }
}
