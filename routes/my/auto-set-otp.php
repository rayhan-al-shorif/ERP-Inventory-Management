<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;


Route::prefix('user/auto-set-otp')->group(function () {
 Route::post('/getByPhn`', [LoginController::class, 'getOtpByPhn'])
     ->name('user.getOtpByPhn');
    
});
