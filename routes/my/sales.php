<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SalesController;




Route::get('sales', [SalesController::class, 'index'])
    ->middleware('role_or_permission:sales_executive|admin|super_admin|sales_manager|report_executive|investor|tso|procurement_assistant')
    ->name('sales.index');

Route::delete('sales/{id}', [SalesController::class, 'destroy'])
    ->name('sales.destroy')
    ->middleware('role_or_permission:sales_executive|tso|procurement_assistant|super_admin|admin|report_executive');

Route::post('/sales/{id}/selected', [SalesController::class, 'fetchSallerID'])
        ->name('sales.saller.selected')
        ->middleware('role_or_permission:sales_executive|tso|procurement_assistant|super_admin|admin|sales_manager|report_executive|investor');

// sales-unit-list
Route::get('/sales-unit-list', [SalesController::class, 'salesUnitList'])
        ->name('sales.unit.list')
        ->middleware('role_or_permission:super_admin|admin|investor|tso|procurement_assistant');
Route::post('/sales/unit-list/ByDate', [SalesController::class, 'salesUnitListByDate'])
        ->name('sales.unit.list.bydate')
        ->middleware('role_or_permission:super_admin|investor|admin|tso|procurement_assistant');
