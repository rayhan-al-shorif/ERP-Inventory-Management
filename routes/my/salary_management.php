<?php

use App\Http\Controllers\SalaryManagementController;
use Illuminate\Support\Facades\Route;


Route::resource('salary_management', SalaryManagementController::class)
->middleware('role:super_admin|admin|tso|procurement_assistant');
Route::get('salary_management/{id}/admin_status', [SalaryManagementController::class, 'admin_status'])->name('admin.status')
->middleware('role:super_admin|admin|tso|procurement_assistant');
Route::get('salary_management/{id}/super_admin_status', [SalaryManagementController::class, 'super_admin_status'])
->name('super_admin.status')->middleware('role:super_admin|admin|tso|procurement_assistant');
Route::get('salary_management/{id}/find', [SalaryManagementController::class, 'Find'])
->middleware('role:super_admin|admin|tso|procurement_assistant');

// This Month Salary Management
Route::prefix('salary-management/this-month/')->group(function () {
    Route::get('/', [SalaryManagementController::class, 'thisMonth'])
    ->name('salary_management.this_month')
    ->middleware('role:super_admin|admin|tso|procurement_assistant');
});
Route::prefix('salary-management/previous-month/')->group(function () {
    
});

