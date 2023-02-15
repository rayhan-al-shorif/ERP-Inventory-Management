<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SupplierController;


Route::get('supplier', [SupplierController::class, 'index'])
    ->name('supplier.index')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

Route::get('supplier/create', [SupplierController::class, 'create'])
    ->name('supplier.create')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

Route::post('supplier', [SupplierController::class, 'store'])
    ->name('supplier.store')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

Route::get('supplier/{supplier}', [SupplierController::class, 'show'])
    ->name('supplier.show')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

Route::get('supplier/{supplier}/edit', [SupplierController::class, 'edit'])
    ->name('supplier.edit')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

Route::put('supplier/{supplier}', [SupplierController::class, 'update'])
    ->name('supplier.update')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

Route::delete('supplier/{supplier}', [SupplierController::class, 'destroy'])
    ->name('supplier.destroy')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant|sales_executive');

//  Api Routes


Route::get('supplier/{supplier}/status', [SupplierController::class, 'supplierStatus'])
    ->name('supplier.status')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant');
