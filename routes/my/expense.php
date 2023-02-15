<?php

use App\Http\Controllers\ExpenseController;
use Illuminate\Support\Facades\Route;

Route::resource('expense', ExpenseController::class)
->middleware('role:super_admin|admin|account|procurement_assistant|tso');

Route::get('expense/{id}/admin_status', [ExpenseController::class, 'admin_status'])
 ->name('expense.admin.status')
 ->middleware('role:admin');

Route::get('expense/{id}/super_admin_status', [ExpenseController::class, 'super_admin_status'])
 ->name('expense.super_admin.status')
 ->middleware('role:super_admin');
