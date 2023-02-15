<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerTypeController;




Route::prefix('customer-type-manual')
->name('customer-type-manual.')
->middleware('role_or_permission:super_admin|admin|tso|smg_manager|account|procurement_assistant')
->group(function () {
    Route::get('/', [CustomerTypeController::class, 'index'])->name('index');
    Route::post('/single/customer-type/update', [CustomerTypeController::class, 'singleCustomerTypeUpdate'])
    ->name('singleCustomerTypeUpdate');
    Route::post('/multi/customer-type/update', [CustomerTypeController::class, 'multiCustomersTypeUpdate'])
    ->name('multiCustomersTypeUpdate');
});
