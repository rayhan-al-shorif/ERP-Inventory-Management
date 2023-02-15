<?php

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->foreignId('zone_id')->constrained('zones')->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('added_by')->constrained('users')->onDelete('cascade')->onUpdate('cascade');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('phone')->unique();
            $table->string('otp')->nullable()->unique();
            $table->string('password');
            $table->string('address_line_1')->nullable();
            $table->string('address_line_2')->nullable();
            $table->string('area')->nullable();
            $table->string('city')->nullable();
            $table->string('image')->nullable();
            $table->string('nid_image')->nullable();
            $table->tinyInteger('account_status')->default(0);
            // $table->timestamp('deleted_at')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });

        $user = User::create([
            'zone_id'             => 1,
            'name'                => 'Super-admin',
            'email'               => 'superadmin@example.com',
            'phone'               => "01799390384",
            'account_status'      => 1,
            'added_by'            => 1,
            'password'            => Hash::make('password'),
        ]);

        $user->assignRole('super_admin');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
