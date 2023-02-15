<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductOrderUnitController;


Route::prefix('product-set-order-units')
   ->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant|sales_manager')
   ->name('product-set-order-units.')
   ->group(function () {
    Route::get('/', [ProductOrderUnitController::class,'index'])->name('index');
    Route::get('/fetchById/{id}', [ProductOrderUnitController::class,'fetchById'])->name('fetchById');
});


