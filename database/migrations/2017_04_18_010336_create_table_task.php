<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableTask extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tasks', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('worker_id');
            $table->string('name');
            $table->string('adhaar');
            $table->string('type');
            $table->string('district');
            $table->string('address');
            $table->string('email');
            $table->string('mobile');
            $table->string('description');
            $table->integer('complaint_id');
            $table->string('consumer_no');
            $table->string('consumer_name');
            $table->string('account_id');
            $table->string('section');
            $table->string('catagory');
            $table->string('consumer_id');
            $table->string('retail');
            $table->string('connection_id');
            $table->string('area');
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
        Schema::dropIfExists('tasks');
    }
}
