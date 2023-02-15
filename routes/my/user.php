<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\UserController;



// Part Part Route For Sub users
Route::get('user/smg-managers', [UserController::class, 'smgManagerIndex'])
    ->name('user.smgManagerIndex')
    ->middleware('permission:user-view');

Route::get('user/admins', [UserController::class, 'adminsIndex'])
    ->name('user.adminsIndex')
    ->middleware('role_or_permission:user-view|procurement_assistant|tso');

Route::get('user/sales-executive', [UserController::class, 'salesExecutiveIndex'])
    ->name('user.salesExecutiveIndex')
    ->middleware('role_or_permission:user-view|procurement_assistant|tso');


Route::get('user/purchases-team', [UserController::class, 'purchasesTeamIndex'])
    ->name('user.purchasesTeamIndex')
    ->middleware('role_or_permission:user-view|procurement_assistant|tso');








Route::get('/logout', [LoginController::class, 'userLogout'])
->name('user.logout')->middleware('auth');
Route::get('user/{user}/status', [UserController::class, 'userStatus'])
->name('user.status')
->middleware('role_or_permission:user-status-update|procurement_assistant|tso');

Route::get('user', [UserController::class, 'index'])->name('user.index')
->middleware('role_or_permission:user-view|procurement_assistant|tso');
Route::get('user/create', [UserController::class, 'create'])->name('user.create')
->middleware('role_or_permission:user-create|procurement_assistant|tso');
Route::post('user', [UserController::class, 'store'])->name('user.store')
->middleware('role_or_permission:user-create|procurement_assistant|tso');
Route::get('user/{user}', [UserController::class, 'show'])
->name('user.show')
->middleware('role_or_permission:user-edit|super_admin|admin|procurement_assistant|tso|sales_manager|sales_executive|purchases_team|smg_manager|root_smg_manager|purchases_team|account|delivery_executive|printer_executive|delivery_man|procurement_assistant|investor|report_executive|delivery_assistant');
Route::get('user/{user}/edit', [UserController::class, 'edit'])
->name('user.edit')->middleware('role_or_permission:user-edit|procurement_assistant|tso');
Route::put('user/{user}', [UserController::class, 'update'])
->name('user.update')
->middleware('role_or_permission:user-edit|super_admin|admin|procurement_assistant|tso|sales_manager|sales_executive|purchases_team|smg_manager|root_smg_manager|purchases_team|account|delivery_executive|printer_executive|delivery_man|procurement_assistant|investor|report_executive|delivery_assistant');
Route::delete('user/{user}', [UserController::class, 'destroy'])
->name('user.destroy')->middleware('role_or_permission:user-delete|procurement_assistant|tso');







// Route::get('user/smg', [UserController::class, 'index']);
// ->middleware('permission:user-view');
