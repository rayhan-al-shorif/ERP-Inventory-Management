<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PackagingController;


Route::prefix('packaging')
->middleware('role_or_permission:super_admin|admin|smg_manager|tso|procurement_assistant')->name('packaging.')->group(function () {
    /* Resource route */
    Route::get('/', [PackagingController::class, 'index'])->name('index');
    Route::post('/update', [PackagingController::class, 'update']);
    Route::get('/generateBarCode', [PackagingController::class, 'generateBarCode'])->name('generateBarCode');
    /* custome routes */
    Route::get('/print', [PackagingController::class, 'stickerPrint'])->name('stickerPrint');
    Route::get('/single/{id}/print', [PackagingController::class, 'singleStickerPrint'])->name('singleStickerPrint');
    Route::get('/fetch-all-data',  [PackagingController::class, 'fetchAllPackagingsData'])->name('fetchAllPackagingsData');
    Route::get('/today-invoice',  [PackagingController::class, 'todayInvoice'])->name('todayInvoice');
    Route::get('/fetch-delivered-order_lists',  [PackagingController::class, 'fetchDeliveredOrderLists']);
});
