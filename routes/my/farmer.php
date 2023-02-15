<?php

use App\Http\Controllers\FarmerController;
use App\Models\Farmer;
use Illuminate\Support\Facades\Route;

Route::prefix('farmers')
->middleware('role_or_permission:admin|super_admin|smg_manager|root_smg_manager|tso|procurement_assistant')
 ->name('farmer.')->group(function () {
  Route::get('/', [FarmerController::class, 'index'])->name('index');
  Route::get('/create', [FarmerController::class, 'create'])->name('create');
  Route::post('/', [FarmerController::class, 'store'])->name('store');
  Route::get('/edit', [FarmerController::class, 'edit'])->name('edit');
  Route::put('/update', [FarmerController::class, 'update'])->name('update');
  Route::delete('/destroy', [FarmerController::class, 'destroy'])->name('destroy');
 });
