<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReplycommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('replycomments', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->integer('comment_id');
        //     $table->unsignedInteger('user_id')->index();
        //      $table->string('message');
        //     $table->foreign('user_id')->references('id')->on('users');
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('replycomments');
    }
}
