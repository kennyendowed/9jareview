<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTopicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('topics', function (Blueprint $table) {
        //   $table->increments('id');
        //   $table->timestamp('created_at');
        //   $table->integer('sub_in_id');
        //   $table->integer('topic_id');
        //   $table->integer('created_by');
        //   $table->string('description');
        //   $table->string('location');
        //   $table->string('city');
        //   $table->string('state');
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('topics');
    }
}
