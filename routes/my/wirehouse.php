<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WirehouseController;

Route::prefix('warehouse')->name('wirehouse.')
->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')->group(function () {
 Route::get('/', [WirehouseController::class, 'index'])->name('index');
 Route::post('/edit', [WirehouseController::class, 'edit'])->name('edit');
 Route::post('/store', [WirehouseController::class, 'store'])->name('store');
 Route::put('/{wirehouse}/update', [WirehouseController::class, 'update'])->name('update');
 Route::delete('/{wirehouse}', [WirehouseController::class, 'destroy'])->name('destroy');
});
