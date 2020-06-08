<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    public $timestamps = false;
    protected $table = "roles";

    public function user(){
        return $this->hasOne('App\User','role_id','id'); 
    }
}
