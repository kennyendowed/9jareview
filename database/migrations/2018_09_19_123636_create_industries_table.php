<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIndustriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    // public function up()
    // {
    //     Schema::create('industries', function (Blueprint $table) {
    //         $table->increments('id', 11);
    //         $table->timestamps();
    //         $table->string('name', 30);
    //         $table->integer('ind_id', 20)->unique();
    //     });
    // }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('industries');
    }
}
