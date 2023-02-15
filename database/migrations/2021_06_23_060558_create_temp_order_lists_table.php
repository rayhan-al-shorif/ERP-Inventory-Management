<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTempOrderListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temp_order_lists', function (Blueprint $table) {
            $table->id();
            $table->foreignId('old_id');
            $table->foreignId('order_id');
            $table->foreignId('product_id');
            $table->foreignId('variant_id');
            $table->string('quantity');
            $table->string('note')->nullable();
            $table->tinyInteger('status')->default(1); // 1 means updated list from order_list_table and 0 means deleted from teable
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
        Schema::dropIfExists('temp_order_lists');
    }
}
