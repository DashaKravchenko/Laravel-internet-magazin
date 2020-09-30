<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLetterItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('letter_items', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('phone');
            $table->string('email');
            $table->string('text');	
            $table->integer('letter_id');


            $table->foreign('email')->references('email')->on('users');
            
            $table->foreign('letter_id')->references('id')->on('letters');

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
        Schema::dropIfExists('letter_items');
    }
}
