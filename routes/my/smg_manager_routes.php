<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SmgManagerController;

//url for sitebar of todays incomming order
Route::get('my/incomming-order', [SmgManagerController::class, 'index'])
    ->name('smg.order.pending')
    ->middleware("role:smg_manager|admin|tso|procurement_assistant|super_admin");

//api for fetching todays incomming order
Route::get('my/incomming-order/fetch', [SmgManagerController::class, 'fethcIncommingPendingOrders'])
    ->name('smg.order.pending.fetch')
    ->middleware("role:smg_manager|admin|tso|procurement_assistant|super_admin");

//api for sales status update
Route::post('my/incomming-order/{status}/status-update', [SmgManagerController::class, 'updateTheOrderStatus'])
    ->name('smg.order.status')
    ->middleware('role:smg_manager|admin|tso|procurement_assistant|super_admin');

//this api will be confirmed a single order from view order page
Route::post('api/my/single-order/confirm-and-send', [SmgManagerController::class, 'confirmAsingleOrder'])
    ->middleware('role:smg_manager|admin|tso|procurement_assistant|super_admin');

//Url for view an order details
Route::get('my/order/{id}/details-view', [SmgManagerController::class, 'viewOrderDetails'])
    ->middleware('role:smg_manager|admin|tso|procurement_assistant|super_admin');

//api for getting updated list of an order from tepmporary database
Route::get('api/get/{id}/updated-list', [SmgManagerController::class, 'getUpdatedOrderList'])
    ->middleware('role:smg_manager|admin|tso|procurement_assistant|super_admin');

// this api is for accept changes and merging
Route::post('api/accept-and-merge', [SmgManagerController::class, 'acceptAndMerge'])
    ->middleware('role:smg_manager|admin|tso|procurement_assistant|super_admin');

// this api is for deny changes and merging
Route::post('api/deny-edit-request', [SmgManagerController::class, 'denyEditRequest'])
    ->middleware('role:smg_manager|admin|tso|procurement_assistant|super_admin');

//Multiple comfirmation system all by clicking a button
Route::post('api/my/multiple-operation', [SmgManagerController::class, 'multipleOperation'])
    ->middleware('role_or_permission:smg_manager|tso|procurement_assistant|super_admin|admin');

/* Delete order route */
Route::post('my/order/delete', [SmgManagerController::class, 'destroyOrder'])
    ->middleware('role_or_permission:smg_manager|tso|procurement_assistant|super_admin|admin');

/* Reject Delete order route */
Route::post('my/order/reject-delete', [SmgManagerController::class, 'rejectOrderDelete'])
    ->middleware('role_or_permission:smg_manager|tso|procurement_assistant|super_admin|admin');
