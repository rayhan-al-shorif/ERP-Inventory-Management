
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DeliveryTeamController;



/* Todays Delivery invoice system */

Route::get('delivery-executive', [DeliveryTeamController::class, 'index'])
    ->middleware('role_or_permission:super_admin|admin|smg_manager|delivery_executive|procurement_assistant|tso')
    ->name('delivery-executive.index');

Route::prefix('@me/')->middleware('role_or_permission:delivery_executive|procurement_assistant|tso')
->name('delivery-executive.')->group(function () {
    Route::get('reports/todays', [DeliveryTeamController::class, 'todaysReport'])
        ->name('todays-reports');

    Route::get('reports/previous', [DeliveryTeamController::class, 'previousReports'])
        ->name('previous-reports');

    Route::get('reported-product/{id}/delivered', [DeliveryTeamController::class, 'deliveredReportedProduct'])
        ->name('delivered-reported-product');
});

