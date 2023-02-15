<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskScheduleController;

/* All setting will be serve from here */

Route::prefix('setting')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
    ->name('setting.')
    ->group(function () {
        /* This group is for task scheduling */
        Route::prefix('task')->name('task.')->group(function () {
            Route::get('/', [TaskScheduleController::class, 'index'])->name('index');
            Route::post('/store', [TaskScheduleController::class, 'store'])->name('store');
            /* This route will fetch all the task schedule time */
            Route::get('fetch-time', [TaskScheduleController::class, 'fetchExistingTime']);
        });
    });
