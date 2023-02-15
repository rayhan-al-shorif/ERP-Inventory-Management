<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PayOrderController;


Route::resource('pay-order', PayOrderController::class)
->middleware('role:super_admin|admin|smg_manager|account|tso|procurement_assistant');

// Approved By Admin
Route::get('pay-order/{payOrder}/admin-status', [PayOrderController::class, 'adminStatus'])
    ->name('pay-order.adminStatus')
    ->middleware('role:admin');

// Approved By Supper Admin
Route::get('pay-order/{payOrder}/super-admin-status', [PayOrderController::class, 'superAdminStatus'])
    ->name('pay-order.superAdminStatus')
    ->middleware('role:super_admin');
