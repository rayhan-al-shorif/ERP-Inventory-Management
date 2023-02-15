<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WithdrawController;


Route::resource('withdraw', WithdrawController::class)
->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant');

// Approved By Admin
Route::get('withdraw/{withdraw}/admin-status', [WithdrawController::class, 'adminStatus'])
    ->name('withdraw.adminStatus')
    ->middleware('role:super_admin|admin|tso|procurement_assistant|smg_manager');

// Approved By Supper Admin
Route::get('withdraw/{withdraw}/super-admin-status', [WithdrawController::class, 'superAdminStatus'])
    ->name('withdraw.superAdminStatus')
    ->middleware('role:super_admin|admin|tso|procurement_assistant|smg_manager');
