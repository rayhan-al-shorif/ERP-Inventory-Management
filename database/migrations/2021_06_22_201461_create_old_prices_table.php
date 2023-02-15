<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOldPricesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('old_prices', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained('products')->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('variant_id')->constrained('variants')->onDelete('cascade')->onUpdate('cascade');
            $table->decimal('purchase_price', 8, 2)->default(0);
            $table->decimal('manual_price', 8, 2)->default(0);
            $table->decimal('new_price', 8, 2)->default(0);
            $table->decimal('normal_price', 8, 2)->default(0);
            $table->decimal('loyal_price', 8, 2)->default(0);
            $table->decimal('zone_one', 8, 2)->default(0);
            $table->string('date');
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
        Schema::dropIfExists('old_prices');
    }
}
