<?php

use App\Models\Customer;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('unique_id', 10);
            $table->foreignId('sales_executive_id')->constrained('users')->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('zone_id')->constrained('zones')->onDelete('cascade')->onUpdate('cascade');
            $table->string('customer_image')->nullable();
            $table->string('name');
            $table->string('nid_number');
            $table->string('dob');
            $table->string('phone')->unique();
            $table->string('address_line_1')->nullable();
            $table->string('address_line_2')->nullable();
            $table->string('store_name')->nullable();
            $table->string('store_address')->nullable();
            $table->string('store_image')->nullable();
            $table->string('nid_front')->nullable();
            $table->string('nid_back')->nullable();
            $table->tinyInteger('account_status')->default(0);
            $table->string('account_type')->nullable();
            // $table->timestamp('deleted_at')->nullable();
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
        Schema::dropIfExists('customers');
    }
}
