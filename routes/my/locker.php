<?php

use App\Http\Controllers\LockerController;
use Illuminate\Support\Facades\Route;


Route::prefix('locker')
->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
  ->name('locker.')
->group(function () {
Route::get('/order/locker', [LockerController::class, 'orderLocker'])->name('order');

});

Route::post('/locker/update/notice', [LockerController::class, 'orderLockerNoticeUpdate'])
->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
->name('update.notice');


    

