<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    public $timestamps = false;
    protected $table = "companies";

    public function department(){
        return $this->hasMany('App\Department','company_id','id'); 
    }
}
