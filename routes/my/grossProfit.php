<?php

use App\Http\Controllers\GrossProfitController;
use Illuminate\Support\Facades\Route;

Route::prefix('reports')->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
 ->name('reports.')->group(function () {
  Route::get('/gross-profit', [GrossProfitController::class, 'index'])->name('index');
  Route::get('/api/price', [GrossProfitController::class, 'getPrice'])
  ->middleware('role_or_permission:admin|super_admin');
 });


 // Price get By APi 


