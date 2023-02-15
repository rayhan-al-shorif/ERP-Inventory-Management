<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DamageAndMissingController;





/*
* Api Routes
*/
Route::prefix('order/damage-and-missing')
->middleware('role:super_admin|admin|smg_manager|sales_executive|tso|procurement_assistant')
->name('order.damage-and-missing.')
->group(function () {
    Route::get('/', [DamageAndMissingController::class, 'index'])->name('index');
    Route::get('/{id}/view/', [DamageAndMissingController::class, 'view'])->name('view');
    Route::post('/createDamageAndMissing', [DamageAndMissingController::class, 'createDamageAndMissing'])
    ->name('createDamageAndMissing');
    Route::get('/detailsList', [DamageAndMissingController::class, 'detailsList'])
    ->name('detailsList');
    // previous
    Route::get('/previous-detailsList', [DamageAndMissingController::class, 'previousDetailsList'])
    ->name('previous-detailsList');
    Route::post('/previous-dmdata-fetch', [DamageAndMissingController::class, 'previousdmDataFetch'])
    ->name('previous-dmdata-fetch');

    // damage-and-missing approved
    Route::post('/dmApproved', [DamageAndMissingController::class, 'dmApproved']);
    Route::post('/dmRejected', [DamageAndMissingController::class, 'dmRejected']);
});
