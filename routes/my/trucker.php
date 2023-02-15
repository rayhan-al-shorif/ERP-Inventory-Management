<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TurckerController;



Route::prefix('tracker')
->name('tracker.')
->middleware('role:super_admin|admin|smg_manager|procurement_assistant|tso')
->group(function () {
 Route::get('/', [TurckerController::class,'index'])->name('index');
 Route::post('/getOrderBYOrderNo', [TurckerController::class,'getOrderBYOrderNo'])->name('getOrderBYOrderNo');
    
});


