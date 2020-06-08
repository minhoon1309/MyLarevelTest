<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdTicket extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_ad_ticket', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tilte');
            $table->text('user_phone');
            $table->string('username');
            $table->string('department_name');
            $table->string('reception_form');
            $table->string('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_ad_ticket');
    }
}
