<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PriceController;
use App\Exports\PriceExport;
use Maatwebsite\Excel\Facades\Excel;

Route::get('today-pricing', [PriceController::class, "index"])
->name('price.index')
->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant|sales_manager');
Route::get('/today-pricing/{id}/fetch-price', [PriceController::class, "fetchAllPrice"])
->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant|sales_manager');
Route::get('today-pricing/create', [PriceController::class, "create"])->name('price.create')
->middleware('role:super_admin|admin|smg_manager');
Route::post('/today-pricing/{id}/update-price', [PriceController::class, "update"])->name('price.update')
->middleware('role:super_admin|admin|smg_manager|tso|procurement_assistant|sales_manager');
Route::delete('today-pricing/{price}', [PriceController::class, 'destroy'])->name('price.destroy')
->middleware('role_or_permission:customer-delete|tso|procurement_assistant');
// Fixed Pricing

Route::prefix('fixing-pricing')
->name('fixing-pricing.')
->middleware('role:super_admin|admin|tso|procurement_assistant|tso|smg_manager|sales_manager|sales_executive')
->group(function () {
 Route::get('/', [PriceController::class, 'fixingPricingView'])
 ->name('view');
Route::get('/fixingPricingViewSaler', [PriceController::class, 'fixingPricingViewSaler'])
->name('pricing.saler');
Route::post('/{id}/update-price', [PriceController::class, "fixingPricingUpdate"])
->name('update');
});


// Exports and imports for 
Route::get('pricing/export-csv', function () {
    return Excel::download(new PriceExport, 'prices.csv');
})
->middleware('role:super_admin|tso|procurement_assistant')
->name('pricing.export-csv');

Route::post('/pricing/import-csv', [PriceController::class, 'importPriceFile'])
->middleware('role:super_admin|admin|tso|procurement_assistant')
->name('pricing.importCsv');

