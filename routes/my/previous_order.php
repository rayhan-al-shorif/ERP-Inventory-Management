<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PreviousOrdersController;

Route::prefix('previousOrders')->name('previousOrders.')
 ->middleware('role_or_permission:order-view|admin|tso|procurement_assistant|super_admin|sales_manager|report_executive|investor')
 ->group(function () {
  Route::get('/', [PreviousOrdersController::class, 'index'])->name('index');
  Route::get('/{order}/show', [PreviousOrdersController::class, 'show'])
  ->name('show');
  // Api routes
  Route::get('/api', [PreviousOrdersController::class, 'apiIndexShow'])->name('apiIndexShow');
  
 });
 
 Route::post('/previousOrders/showOrder/api', [PreviousOrdersController::class, 'apiPreviousOrderShow'])
 ->name('previousOrders.apiPreviousOrderShow');
 Route::get('previousOrders/apiFetch', [PreviousOrdersController::class, 'apiIndexFetch'])
 ->name('previousOrders.apiIndexFetch')
 ->middleware('role_or_permission:sales_manager|admin|tso|procurement_assistant|super_admin|report_executive|investor');
 Route::post('/previousOrders/apiFetch/ByDate', [PreviousOrdersController::class, 'apiIndexFetchByDate'])
 ->name('previousOrders.apiIndexFetch.ByDate')
 ->middleware('role_or_permission:sales_manager|admin|super_admin|tso|procurement_assistant|report_executive|investor');

 Route::get('/previousOrders/{month}/sol', [PreviousOrdersController::class, 'solShow'])
 ->name('previousOrders.sol')
 ->middleware('role_or_permission:sales_manager|admin|super_admin|tso|procurement_assistant|report_executive|investor');


 // Update previous Orders api

Route::prefix('previous-orders')
  ->name('previous-orders.')
  ->middleware('role_or_permission:sales_manager|admin|super_admin|tso|procurement_assistant|report_executive|investor')
  ->group(function () {
   Route::get('api/index', [PreviousOrdersController::class, 'previousOrderApiIndex'])->name('previousOrderApiIndex');
   Route::post('/api-index-fetch-data', [PreviousOrdersController::class, 'previousOrderApiIndexFetchData'])
   ->name('previousOrderApiIndexFetchData');
  });




