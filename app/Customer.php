<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    public $timestamps = false;
    protected $table = "customers";

    public function ticket(){
        return $this->belongsTo('App\Ticket','customer_id','id'); 
    }
}
