<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NagadPaymentController;




Route::prefix('customers')
->middleware('role_or_permission:sales_executive|super_admin|admin|tso|procurement_assistant')
    ->name('customers.nagad.')
    ->group(function () {
        Route::get('/nagad/payments', [NagadPaymentController::class, 'index'])
            ->name('index');
        Route::post('/nagad/payments/create', [NagadPaymentController::class, 'create'])
            ->name('create');
    });
