<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\CashCollectionController;


Route::prefix('employee')
->middleware('role:super_admin|admin|smg_manager|root_smg_manager|sales_executive|purchases_team|account|
              delivery_executive|delivery_man|sales_manager|procurement_assistant|investor|report_executive|
              delivery_assistant|printer_executive|tso')
->name('employee.')
->group(function () {
    Route::get('/', [EmployeeController::class, 'index'])->name('index');
    Route::get('/{id}/show', [EmployeeController::class, 'show'])->name('show');
});
Route::prefix('employee')
->middleware('role:super_admin|admin|tso|procurement_assistant')
->name('employee.')
->group(function () {
    Route::post('/store', [EmployeeController::class, 'store'])->name('store');
    Route::post('/update', [EmployeeController::class, 'update'])->name('update');
    Route::delete('/{id}/delete', [EmployeeController::class, 'destroy'])->name('destroy');
    Route::post('/update/deduct_bonus', [EmployeeController::class, 'deductBonus'])->name('deductBonus');
    Route::post('/status/change', [EmployeeController::class, 'employeeStatus'])->name('employeeStatus');
});


// cash-collections

Route::prefix('cash-collections')
    ->middleware('role:super_admin|admin')
    ->name('cash-collections.')
    ->group(function () {
        Route::get('/', [CashCollectionController::class, 'index'])->name('index');
        Route::post('/importCashCollectionExcel', [CashCollectionController::class, 'importCashCollectionExcel'])
        ->name('importCashCollectionExcel');
    });
