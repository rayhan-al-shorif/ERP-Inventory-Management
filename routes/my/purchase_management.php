<?php

use App\Http\Controllers\PurchaseManagementController;
use Illuminate\Support\Facades\Route;


Route::resource('purchase_management', PurchaseManagementController::class)->middleware('role:super_admin|admin|account');
Route::get('purchase_management/{id}/admin_status', [PurchaseManagementController::class, 'admin_status'])
 ->name('purchase_management.admin.status')
 ->middleware('role:admin|super_admin|purchase_team|tso|procurement_assistant');

Route::get('purchase_management/{id}/super_admin_status', [PurchaseManagementController::class, 'super_admin_status'])
 ->name('purchase_management.super_admin.status')
 ->middleware('role:super_admin|super_admin|purchase_team|tso|procurement_assistant');
