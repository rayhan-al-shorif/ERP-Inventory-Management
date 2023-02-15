<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PreviousPurchasesController;

Route::prefix('previous-purchases')->name('previousPurchases.')
 ->middleware('role_or_permission:order-view|admin|tso|procurement_assistant|purchases_team|super_admin|sales_manager|report_executive|investor')
 ->group(function () {  
  Route::get('/', [PreviousPurchasesController::class, 'index'])
    ->name('index');
  Route::get('/fetch', [PreviousPurchasesController::class, 'fetchPreviousPurchaseList'])
    ->name('fetch');  
  Route::post('/update', [PreviousPurchasesController::class, 'updatePreviousPurchase'])
    ->name('update');  
  Route::post('/fetch/ByDate', [PreviousPurchasesController::class, 'fetchPreviousPurchaseListBYDate'])
    ->name('fetch.byDate');  
 });