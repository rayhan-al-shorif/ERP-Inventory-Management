<?php

use App\Http\Controllers\FixedPriceController;
use Illuminate\Support\Facades\Route;

Route::prefix('fixing-pricing-update')
->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
 ->name('fixing-pricing-update.')->group(function () {
    Route::get('/', [FixedPriceController::class,'index'])
    ->name('index');
    Route::post('/dateChange', [FixedPriceController::class,'dateChange'])
    ->name('dateChange');
    Route::get('/setOldPrice', [FixedPriceController::class,'setOldPrice'])
    ->name('setOldPrice');
 });

// previousFixedPrice 
Route::prefix('previous-fixing-pricing')
->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
 ->name('previous-fixing-pricing.')->group(function () {
    Route::get('/index', [FixedPriceController::class,'previousFixedPriceIndex'])
    ->name('previousFixedPriceIndex');
    Route::post('/fetch-pricing-data', [FixedPriceController::class,'previousFixedPriceFetchData'])
    ->name('previousFixedPriceFetchData');
    Route::get('/{date}/oldFixedPriceDelete', [FixedPriceController::class,'oldFixedPriceDelete'])
    ->name('oldFixedPriceDelete');
 });




 // Price get By APi 


