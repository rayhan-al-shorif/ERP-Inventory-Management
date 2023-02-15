<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PandamartController;

// Pandamart routes 

Route::prefix('pandamart')
   ->middleware('role_or_permission:order-view|admin|super_admin|tso|procurement_assistant|investor')
   ->group(function () {
    Route::get('/', [PandamartController::class, 'pandamartIndex'])
       ->name('pandamart.index');
    // Pandamart import
    Route::post('/importPandamart', [PandamartController::class, 'importPandamart'])
        ->name('importPandamart');
    // Pandamart SKU Maintenance
    Route::get('/sku', [PandamartController::class, 'sku'])
        ->name('sku'); 
    Route::get('/allsku/fasholvsPandamart', [PandamartController::class, 'getAllSkufasholvsPandamart'])
        ->name('sku'); 
    Route::post('/skufasholvsPandamartUpdate', [PandamartController::class, 'skufasholvsPandamartUpdate'])
        ->name('skufasholvsPandamartUpdate');
    // add new sku genare  handles
    Route::get('/fetchProductWithVariantAndSKu', [PandamartController::class, 'fetchProductWithVariantAndSKu'])
        ->name('fetchProductWithVariantAndSKu');  

});

