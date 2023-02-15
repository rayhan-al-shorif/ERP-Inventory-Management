<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BalanceController;
use App\Http\Controllers\BankBalanceController;
use App\Http\Controllers\HandBalanceController;

Route::prefix('balance')
->middleware('role:super_admin|admin|tso|smg_manager|account|procurement_assistant')->group(function () {
    /* Balance index */
    Route::get('/', [BalanceController::class, 'index'])
        ->name('balance.index');

    // Bank Balance
    Route::post('/bank/create', [BankBalanceController::class, 'store'])
        ->name('bankBalance.store');

    Route::delete('/bank/{bank}', [BankBalanceController::class, 'destroy'])
        ->name('bankBalance.destroy');
});


Route::get('/bank-balance/{bankBalance}/edit', [BankBalanceController::class, 'edit'])
    ->name('bankBalance.edit')
    ->middleware('role:super_admin|admin|tso|smg_manager|account|procurement_assistant');

Route::put('/bank-balance/{bankBalance}/update', [BankBalanceController::class, 'update'])
    ->name('bankBalance.update')
    ->middleware('role:super_admin|admin|tso|procurement_assistant|smg_manager|account');


// Hand Balance
Route::prefix('balance/hand')->middleware('role:super_admin|admin|smg_manager|account')->group(function () {

    Route::post('/create', [HandBalanceController::class, 'store'])
        ->name('handBalance.store');

    Route::delete('/{hand}', [HandBalanceController::class, 'destroy'])
        ->name('handBalance.destroy');
});


Route::get('/hand-balance/{handBalance}/edit', [HandBalanceController::class, 'edit'])
    ->name('handBalance.edit')
    ->middleware('role:super_admin|admin|smg_manager|account');

Route::put('/hand-balance/{handBalance}/update', [HandBalanceController::class, 'update'])
    ->name('handBalance.update')
    ->middleware('role:super_admin|admin|smg_manager|account');
