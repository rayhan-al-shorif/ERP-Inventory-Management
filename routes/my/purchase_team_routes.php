<?php

use App\Http\Controllers\PurchaseTeamController;
use Illuminate\Support\Facades\Route;

/* This route is for show all the requirement for todays */



Route::get('purchase-team', [PurchaseTeamController::class, 'index'])
    ->name('purchaser.requirements.todays')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant|purchases_team');
// @my/todays/overall-requirements

Route::get('@my/todays-requirements', [PurchaseTeamController::class, 'viewTodaysRequirements'])
    ->name('purchaser.requirements.todays')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant|purchases_team');

Route::get('@my/todays-requirements/actions', [PurchaseTeamController::class, 'requirementsActions'])
    ->name('purchaser.requirements.actions')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant');

/* This api is for fetch all data that has the total_requirements table */
Route::get('@my/todays-requirements/fetch', [PurchaseTeamController::class, 'fetchTodaysRequirements'])
    ->name('purchaser.requirements.fetch')
    ->middleware('role_or_permission:super_admin|admin|purchases_team|tso|procurement_assistant');
Route::post('/pv_sku/ByproductIdandvariantid', [PurchaseTeamController::class, 'getPvSkuByProductIdAndVariantId'])
    ->name('purchaser.requirements.fetch')
    ->middleware('role_or_permission:super_admin|admin|purchases_team|tso|procurement_assistant');

/* This api for storing the data that will provide purchase team like (supplied_qty,image,status) */
Route::post('/@my/todays-supplied-requirement/store', [PurchaseTeamController::class, 'storeSuppliedData'])
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant|purchases_team');

// purchase price importCsv

Route::post('/purchase/import-csv', [PurchaseTeamController::class, 'importPurchasePriceFile'])
->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant|purchases_team')
->name('purchase.importCsv'); 

// fixing purchase price

Route::get('fixing-purchase-price', [PurchaseTeamController::class, 'fixingPurchasePrice'])
->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
->name('purchase.fixingPurchasePrice'); 