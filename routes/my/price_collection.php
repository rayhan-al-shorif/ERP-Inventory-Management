<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PriceCollectionController;

Route::prefix('price-collection')
   ->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant|sales_manager')
   ->name('price-collection.')
   ->group(function () {
    Route::get('/', [PriceCollectionController::class,'index'])->name('index');
    Route::get('/create', [PriceCollectionController::class,'create'])->name('create');
});

