<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UnitAndSaleController;



Route::get('reports/unit-and-sales', [UnitAndSaleController::class, 'index'])
 ->name('reports.unit-and-sales')
 ->middleware("role:smg_manager|admin|super_admin|sales_manager|tso|procurement_assistant|report_executive");

Route::prefix('reports/sumOfUnitAndSale')->name('reports.')
->middleware("role:admin|super_admin|sales_manager|tso|procurement_assistant|report_executive")
 ->group(function () {
  Route::get('/', [UnitAndSaleController::class, 'sumOfUnitAndSale'])
   ->name('sumOfUnitAndSale');
  Route::post('/update-or-create/', [UnitAndSaleController::class, 'updateOrCreate'])
   ->name('updateOrCreate');
 });

// Route::get('reports/sumOfUnitAndPurchases/createPdf', [UnitAndPurchaseController::class, 'createPdf'])
//  ->name("unitAndPurchase.createPdf")
//  ->middleware("role:admin|super_admin|sales_manager");

Route::post('reports/unitAndSales/startDate', [UnitAndSaleController::class, 'startAndEndDate'])
 ->name('unitAndSales.startDate')
 ->middleware("role:admin|super_admin|tso|procurement_assistant|sales_manager|report_executive");


//  Route::get('previousOrders/apiFetch', [PreviousOrdersController::class, 'apiIndexFetch'])
//  ->name('previousOrders.apiIndexFetch')
//  ->middleware('role_or_permission:sales_manager|admin|super_admin');
//  Route::post('/previousOrders/apiFetch/ByDate', [PreviousOrdersController::class, 'apiIndexFetchByDate'])
//  ->name('previousOrders.apiIndexFetch.ByDate')
//  ->middleware('role_or_permission:sales_manager|admin|super_admin');



