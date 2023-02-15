<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AssignSellerZoneController;

Route::prefix('assign_seller_zone/')
->middleware('role_or_permission:super_admin|admin|tso|smg_manager|account|procurement_assistant')
->name('assign_seller_zone.')
->group(function () {

 Route::post('setZones', [AssignSellerZoneController::class, 'setZones'])
 ->name('setZones');
 Route::post('getZoneIDByName', [AssignSellerZoneController::class, 'getZoneIDByName'])
 ->name('getZoneIDByName');
 Route::get('getZoneAll', [AssignSellerZoneController::class, 'getZoneAll'])
 ->name('getZoneAll');
    
});
