<?php

use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Auth\LoginController;
use Spatie\Permission\Models\Role;


// all route require here
Route::get('/quick-search', [PagesController::class, 'quickSearch'])->name('quick-search');

Route::get('/', function () {
    return redirect()->route('user.login');
});

/*
* Auto  Set Otp routes
*/
Route::prefix('user/auto-set-otp')->group(function () {
 Route::post('/getByPhn', [LoginController::class, 'getOtpByPhn'])
     ->name('user.getOtpByPhn');
    
});
// require_once('my/auto-set-otp.php');


Route::middleware('guest')->group(function () {
    Route::get('user/login', [LoginController::class, 'userLoginView'])->name('user.login');
    Route::post('user/login', [LoginController::class, 'userLoginProccess']);
    Route::post('user/phone', [LoginController::class, 'createOtpForPhoneNumber']);
    Route::post('user/resent-otp', [LoginController::class, 'resentOtp']);
});

Route::get('user/logout', [LoginController::class, 'userLogout'])->name('logout')->middleware('auth');

Route::get('authenticated-user', function () {
    $user = auth()->user()->load('zone', 'addedBy');
    return response()->json([
        'status' => true,
        'message' => "You are successfully loged In",
        'data'   => $user
    ], 200);
})->middleware('role:super_admin|admin|smg_manager|sales_executive|purchases_team');

Route::get('all-user', function () {
    $user = User::all()->load('zone', 'addedBy');
    return response()->json([
        'status' => true,
        'message' => "You are successfully loged In",
        'data'   => $user
    ], 200);
})->middleware('role:super_admin|admin|smg_manager');

Route::get('all-sales_executive', function () {
    $salesExecutive = User::role('sales_executive')->get();
    return response()->json([
        'status' => true,
        'message' => "You are successfully loged In",
        'data'   => $salesExecutive
    ], 200);
})->middleware('role:super_admin|admin|smg_manager');

Route::get('user/dashboard', [DashboardController::class, 'index'])->name('user.dashboard')->middleware('auth');




/* Route::get('users/overviews', function () {
    return view('admin.user-overview');
})->name('users.overview')->middleware('role:super_admin|admin|smg_manager');
 */

