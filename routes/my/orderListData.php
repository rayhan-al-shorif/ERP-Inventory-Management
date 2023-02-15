<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderListDataController;
use App\Http\Controllers\OrderListDataUpController;




Route::prefix('order-list-data')
->middleware('role_or_permission:order-create|admin|super_admin|sales_manager|tso|procurement_assistant|investor')
->group(function () {
    Route::get('/', [OrderListDataController::class, 'index'])
        ->name('order-list-data.index');
    Route::post('/fetch', [OrderListDataController::class, 'fetchOrderListData'])
        ->name('order-list-data.fetchOrderListData');
    Route::get('/fetch/{startDate}/{endDate}', [OrderListDataController::class, 'fetchOrderListStartAndEnd'])
        ->name('order-list-data.startAndEnd');
});
Route::prefix('today-order-list-data')
->middleware('role_or_permission:order-create|admin|super_admin|sales_manager|tso|procurement_assistant|investor')
->group(function () {
    Route::get('/', [OrderListDataController::class, 'todayindex'])
    ->name('order-list-data.todayindex');
    Route::get('/fetch', [OrderListDataController::class, 'todayFetchOrderListData'])
    ->name('order-list-data.todayFetchOrderListData');
});

// Up
Route::prefix('order-list-data-up')
->middleware('role_or_permission:order-create|admin|super_admin|sales_manager|tso|procurement_assistant|investor')
->group(function () {
    Route::get('/', [OrderListDataUpController::class, 'index'])
        ->name('order-list-data.index');
    // Route::post('/fetch', [OrderListDataUpController::class, 'fetchOrderListData']);
    //     ->name('order-list-data.fetchOrderListData');
    // Route::get('/fetch/{startDate}/{endDate}', [OrderListDataUpController::class, 'fetchOrderListStartAndEnd'])
    //     ->name('order-list-data.startAndEnd');
});

