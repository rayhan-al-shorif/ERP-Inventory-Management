<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DepositController;


Route::resource('deposit', DepositController::class)
    ->middleware('role:super_admin|admin|smg_manager|account|tso|procurement_assistant');

// Approved By Admin
Route::get('deposit/{deposit}/admin-status', [DepositController::class, 'adminStatus'])
    ->name('deposit.adminStatus')
    ->middleware('role:admin');

// Approved By Supper Admin
Route::get('deposit/{deposit}/super-admin-status', [DepositController::class, 'superAdminStatus'])
    ->name('deposit.superAdminStatus')
    ->middleware('role:super_admin');
