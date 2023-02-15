<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuppliersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('suppliers', function (Blueprint $table) {
            $table->id();
            $table->string('supplier_name');
            $table->string('product_name');
            $table->string('market_name');
            $table->string('phone');
            $table->string('district');
            $table->string('image')->nullable();
            $table->string('banking_mobile');
            $table->string('product_address');
            $table->string('business_date');
            $table->string('supplier_payment');
            $table->string('about_fashol')->nullable();
            $table->tinyInteger('account_status')->default(0);
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
        Schema::dropIfExists('suuppliers');
    }
}
