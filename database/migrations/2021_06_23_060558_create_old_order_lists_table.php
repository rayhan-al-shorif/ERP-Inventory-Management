<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOldOrderListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('old_order_lists', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained('old_orders')->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('product_id')->constrained('products')->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('variant_id')->constrained('variants')->onDelete('cascade')->onUpdate('cascade');
            $table->string('quantity');
            $table->string('note')->nullable();
            $table->tinyInteger('status')->default(1); // 1 means no edited... and 0 means added from edited part
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
        Schema::dropIfExists('old_order_lists');
    }
}
