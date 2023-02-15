<?php 

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SupplyController;

Route::group(['prefix' => 'supply','as'=>'supply.','middleware'=>'role:admin|super_admin|tso|procurement_assistant'], function() {
    Route::get('/list', [SupplyController::class , 'index'])->name('index');
    Route::get('/create', [SupplyController::class , 'create'])->name('create');
    Route::get('/fetch-list', [SupplyController::class , 'fetchSuppliedList'])->name('fetch-list');
    Route::get('suppliers/fetch', [SupplyController::class , 'fetchSuppliers'])->name('suppliers');
    Route::get('/purchase-teams/fetch', [SupplyController::class , 'fetchPurchaseTeam'])->name('purchase_team');
    Route::post('/store', [SupplyController::class , 'store'])->name('store');
});