<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;

/* All setting will be serve from here */

Route::prefix('user')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
    ->name('user.otp-set.')
    ->group(function () {
        Route::get('/set/otp', [LoginController::class, 'userSetOtpView']);
        Route::get('/set/otp/fetch-user', [LoginController::class, 'fetchUserData']);
        Route::post('/set/otp/create', [LoginController::class, 'userSetOtpCreate'])
        ->name('create');
});
