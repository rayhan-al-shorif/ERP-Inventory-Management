<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ZoneController;

// Route::resource('zone', ZoneController::class)->middleware('role:super_admin|admin');


Route::prefix('zone')
->middleware('role:super_admin|admin|tso|procurement_assistant')
->name('zone.')
->group(function () {
    Route::get('/', [ZoneController::class,'index'])
    ->name('index');
    Route::post('/store', [ZoneController::class,'store'])
    ->name('store');
    Route::post('/updateZone', [ZoneController::class,'updateZone'])
    ->name('updateZone');
    Route::post('/fetchZone', [ZoneController::class,'fetchZone'])
    ->name('fetchZone');
    Route::delete('/{id}', [ZoneController::class,'destroy'])
    ->name('destroy');
});