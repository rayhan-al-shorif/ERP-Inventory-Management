<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderUpdateController;


Route::get('order/{order}/show-update', [OrderUpdateController::class, 'show'])
    ->name('order.show.update')
    ->middleware('role_or_permission:order-view|admin|super_admin|tso|procurement_assistant|investor');