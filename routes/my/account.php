<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerAccountLogController;

// Route::resource('customer', CustomerController::class)->middleware('permission:customer-create');

Route::resource('account', CustomerAccountLogController::class)
->middleware('role_or_permission:super_admin|admin|tso|smg_manager|account|procurement_assistant');
