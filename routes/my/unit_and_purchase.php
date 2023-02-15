<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UnitAndPurchaseController;



Route::get('reports/unit-and-purchase', [UnitAndPurchaseController::class, 'index'])
 ->name('reports.unit-and-purchase')
 ->middleware("role:smg_manager|admin|tso|procurement_assistant|super_admin|sales_manager");

Route::prefix('reports/sumOfUnitAndPurchases')->name('reports.')
->middleware("role:admin|tso|procurement_assistant|super_admin|sales_manager")
 ->group(function () {
  Route::get('/', [UnitAndPurchaseController::class, 'sumOfUnitAndPurchases'])
   ->name('sumOfUnitAndPurchases');
  Route::post('/update-or-create/', [UnitAndPurchaseController::class, 'updateOrCreate'])
   ->name('updateOrCreate');
 });

Route::get('reports/sumOfUnitAndPurchases/createPdf', [UnitAndPurchaseController::class, 'createPdf'])
 ->name("unitAndPurchase.createPdf")
 ->middleware("role:admin|super_admin|sales_manager|tso|procurement_assistant");
