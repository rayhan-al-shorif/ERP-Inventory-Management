<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TruckController;
use App\Http\Controllers\TruckAssignController;
use App\Http\Controllers\ReportListTruckController;

Route::resource('truck', TruckController::class)
    ->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant');



 // Assign trucks per delivery
     Route::post('/delivery/pending-deliveries/assign-trucks', [TruckAssignController::class, 'pendingDeliveriesAssignTruck'])
    ->name('delivery.pending-delivery.assign-trucks')
    ->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant');

 // Assign trucks per delivery
     Route::post('/delivery/pending-deliveries/removeAssignTruck', [TruckAssignController::class, 'pendingDeliveriesRemoveAssignTruck'])
    ->name('delivery.pending-delivery.removeAssignTruck')
    ->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant');

Route::prefix('reports/report-list-truck')
->name('reports.report-list-truck.')
->middleware('role_or_permission:admin|super_admin|sales_executive|delivery_assistant|tso|procurement_assistant')
->group(function () {
    Route::get('/', [ReportListTruckController::class, 'reportListTruck']);
    Route::get('/fetch-assign-truck', [ReportListTruckController::class, 'fetchTruckAssign'])
        ->name('fetchTruckAssign');
    Route::post('/createReportTruckList', [ReportListTruckController::class, 'reportListTrucksCreate'])
        ->name('reportListTrucksCreate');
    Route::get('/{id}/truckListReportView', [ReportListTruckController::class, 'truckListReportView'])
        ->name('view');
    Route::get('/truckListReportViewOrderList', [ReportListTruckController::class, 'truckListReportViewOrderList'])
        ->name('ViewOrderList');
    Route::get('/{id}/ViewOrderListSingleTruck', [ReportListTruckController::class, 'ViewOrderListSingleTruck'])
        ->name('ViewOrderListSingleTruck');

    });


// Old Truck List Report

Route::prefix('reports/old-report-list-truck')
->name('reports.old-report-list-truck.')
->middleware('role_or_permission:admin|super_admin|sales_executive|delivery_assistant|tso|procurement_assistant')
->group(function () {
    Route::get('/{id}/truckListReportView', [ReportListTruckController::class, 'oldReportListTruckView'])
        ->name('view');
    Route::get('/truckListReportViewOrderList', [ReportListTruckController::class, 'truckListReportViewOrderList'])
        ->name('ViewOrderList');
    Route::get('/{id}/ViewOrderListSingleTruck', [ReportListTruckController::class, 'oldViewOrderListSingleTruck'])
        ->name('ViewOrderListSingleTruck');


    });
    