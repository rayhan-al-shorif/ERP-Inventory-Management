<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SortManagementController;
use App\Http\Controllers\OrderController;

Route::prefix('short-management')
->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
->name('sm.')->group(function () {
 Route::get('/', [SortManagementController::class, 'index'])->name('index');
 Route::get('/{orderListId}/show', [SortManagementController::class, 'show'])->name('show');
 Route::post('/reduce-now', [OrderController::class, 'orderReUpdate']);
});
