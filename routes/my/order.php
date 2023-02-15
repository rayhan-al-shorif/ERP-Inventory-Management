<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderController;


Route::get('order/create', [OrderController::class, 'create'])
    ->name('order.create')
    ->middleware('role_or_permission:order-create|admin|super_admin|sales_manager|tso|procurement_assistant|investor');

Route::get('order/{order}/show', [OrderController::class, 'show'])
    ->name('order.show')
    ->middleware('role_or_permission:order-view|admin|super_admin|tso|procurement_assistant|investor');

Route::get('orders/pending', [OrderController::class, 'pendingOrders'])
    ->name('order.pending')
    ->middleware('role_or_permission:sales_executive|admin|super_admin|tso|procurement_assistant|investor');



Route::prefix('api/order')->name('order.')->group(function () {
    Route::delete('/orderDestroy/{id}', [OrderController::class, 'orderDestroy'])
        ->name('orderDestroy')
        ->middleware('role_or_permission:sales_executive|order-delete|admin|super_admin|tso|procurement_assistant|investor');

    Route::get('/fetch', [OrderController::class, 'fetchOrders'])
        ->name('fetch')
        ->middleware('role_or_permission:sales_executive|order-view|super_admin|tso|procurement_assistant|investor');

    Route::post('/removeDuplicatesOrdersVarients', [OrderController::class, 'removeDuplicatesOrdersVarients'])
        ->name('removeDuplicatesOrdersVarients')
        ->middleware('role_or_permission:sales_executive|order-view|super_admin|tso|procurement_assistant|investor');
    Route::get('/removeDuplicatesOrdersVarientsUp', [OrderController::class, 'removeDuplicatesOrdersVarientsUp'])
        ->name('removeDuplicatesOrdersVarients')
        ->middleware('role_or_permission:sales_executive|order-view|super_admin|tso|procurement_assistant|investor');

    Route::post('/store', [OrderController::class, 'store'])
        ->name('store')
        ->middleware('role_or_permission:sales_executive|super_admin|admin|super_admin|tso|procurement_assistant|investor');

    Route::post('/remove-item', [OrderController::class, 'removeOrderItem'])
        ->name('order.remove-item')
        ->middleware('role_or_permission:sales_executive|admin|super_admin|tso|procurement_assistant|investor');

    Route::post('/update', [OrderController::class, 'update'])
        ->name('update')
        ->middleware('role_or_permission:sales_executive|tso|procurement_assistant|super_admin|investor|admin');

    Route::get('{id}/fetch-edited-data', [OrderController::class, 'fetchEditedData'])
        ->name('edited-data')
        ->middleware('role_or_permission:sales_executive|tso|procurement_assistant|super_admin|investor|admin');

    Route::get('/fetch-prices', [OrderController::class, 'fetchPrices'])
        ->middleware('role_or_permission:sales_executive|tso|procurement_assistant|super_admin|investor|admin');

    Route::post('/add-new-item' , [OrderController::class, 'addNewItem'])
     ->middleware('role_or_permission:sales_executive|tso|procurement_assistant|super_admin|investor|admin');

});
// Order Trucking Routes
Route::get('reports/pinik-order' , [OrderController::class, 'orderTruckingReport'])
 ->middleware('role_or_permission:sales_manager|admin|tso|procurement_assistant|super_admin|investor');




Route::group(['prefix' => 'old-order' , 'as' => 'old_order.', 'middleware' => 'role_or_permission:admin|tso|procurement_assistant|super_admin'],function(){
    Route::get('create', [OrderController::class, 'oldOrderCreate'])->name('create');
    Route::post('store', [OrderController::class, 'oldOrderStore'])->name('store');
});


Route::get('order/missing-itmes/{id}/backup', [OrderController::class, 'missingItemsBackup'])
    ->name('order.missing-items.backup')
    ->middleware('role_or_permission:admin|tso|procurement_assistant|super_admin');



