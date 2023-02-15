<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PriceUpdateController;




Route::prefix('fixed-price')
    ->middleware('role_or_permission:sales_executive|super_admin|admin|tso|procurement_assistant')
    ->name('fixed.price')
    ->group(function () {
        Route::get('/', [PriceUpdateController::class, 'index'])
            ->name('index');
        Route::post('/update', [PriceUpdateController::class, 'update'])
            ->name('update');
    });