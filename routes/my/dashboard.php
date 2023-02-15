
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;




// dashboard monthly sales api
Route::get('/sales/date/getDateBasedSalesPrice', [DashboardController::class, 'getDateBasedSalesPrice'])
        ->name('sales.date.getDateBasedSalesPrice')
        ->middleware('role_or_permission:sales_executive|super_admin|admin|sales_manager|report_executive|tso|procurement_assistant');


/* Todays Delivery invoice system */
Route::post('/sales/date/getDateBasedCRR', [DashboardController::class, 'getDateBasedCRR'])
        ->name('sales.date.getDateBasedCRR')
        ->middleware('role_or_permission:sales_executive|super_admin|admin|sales_manager|report_executive|tso|procurement_assistant');




