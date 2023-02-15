<?php

use App\Http\Controllers\RootSmgManagerController;
use Illuminate\Support\Facades\Route;

/* url for todays zone base requirement */

Route::get('@my/todays/zones-requirements', [RootSmgManagerController::class, 'todaysZoneRequirement'])
    ->name('root-smg.todays.zone-requirements')
    ->middleware('role_or_permission:root_smg_manager|admin|tso|procurement_assistant|super_admin');
/* view a specific zone requirement */
Route::get('@my/todays/zones-requirements/{id}/show', [RootSmgManagerController::class, 'todaysZoneRequirementShow'])
    ->name('root-smg.todays-requirements.show')
    ->middleware('role_or_permission:root_smg_manager|admin|tso|procurement_assistant|super_admin');
/* Todays total requirement that will be send to purchase team */
Route::get('@my/todays/overall-requirements', [RootSmgManagerController::class, 'todaysOverallRequirements'])
    ->name('root-smg.todays-requirements')
    ->middleware('role_or_permission:root_smg_manager|admin|tso|procurement_assistant|super_admin|delivery_assistant');

/* This route for sending the todays requirement list to purchase team */
Route::get('@my/todays-requirements/send-to-purchase-team', [RootSmgManagerController::class, 'sendRequirementToPurchaseTeam'])
    ->name('root-smg.send-requirements-to-purchase')
    ->middleware('role:root_smg_manager|admin|tso|procurement_assistant|super_admin');

/* This route is for the fullfilled requirements */
Route::get('@my/todays-fullfill-requirements', [RootSmgManagerController::class, 'fetchAllFullFilledRequierment'])
    ->name('root-smg.fullfill')
    ->middleware('role:root_smg_manager|admin|tso|procurement_assistant|super_admin');

/* This route for the sending order requirement for packaging */
Route::get('@my/send-for-packaging', [RootSmgManagerController::class, 'sendForPackaging'])
    ->name('root-smg.send-for-packaging')
    ->middleware('role_or_permission:root_smg_manager|admin|tso|procurement_assistant|super_admin');
