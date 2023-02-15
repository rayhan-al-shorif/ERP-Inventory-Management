<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplierHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplier_histories', function (Blueprint $table) {
            $table->id();
            $table->foreignId('supplier_id')->constrained('suppliers')->onUpdate('cascade')->onDelete("cascade");
            $table->foreignId('product_id')->constrained('products')->onUpdate('cascade')->onDelete("cascade");
            $table->foreignId('purchase_team_id')->constrained('users')->onUpdate('cascade')->onDelete("cascade");
            $table->string('product_count');
            $table->string('product_cost');
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
        Schema::dropIfExists('supplier_histories');
    }
}
