<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DeliveryTeamController;
use App\Http\Controllers\DeliveryInvoiceController;
use App\Http\Controllers\TruckAssignController;
use App\Http\Controllers\DeliveryForCustomerController;

/* Delivery Invoice */

Route::prefix('delivery')
->middleware('role_or_permission:super_admin|procurement_assistant|admin|delivery_executive|delivery_assistant|printer_executive|tso')
->group(function () {

    Route::get('{starting_date}/{ending_data}/print-by-date',[DeliveryInvoiceController::class , "findAndPrintByDate"]);
    /* Todays Delivery invoice system */
    Route::get('/today-delivery-invoices', [DeliveryInvoiceController::class, 'todayDeliveryInvoice'])
        ->name('delivery.today-invoice-index');
    /* print a specific order invoice */
    Route::get('/{id}/today-invoice-show', [DeliveryInvoiceController::class, 'todayInvoiceShow'])
        ->name('delivery.today-invoice-show');

    /*  print all invoice  by one click */
    Route::get('/print-all-invoice', [DeliveryInvoiceController::class, 'printAllInvoice'])
        ->name('delivery.print_all-invoice');

    Route::get('/print-all-invoice/{sallerId}/selected-saller', [DeliveryInvoiceController::class, 'printAllInvoiceSelectedSaller'])
        ->name('delivery.print_all-invoice.selected-saller');
    // Route::post('/print-all-invoice/selected-saller', [DeliveryInvoiceController::class, 'printAllInvoiceSelectedSaller'])
    //     ->name('delivery.print_all-invoice.selected-saller');


    /* Previous Delivery invoice system */
    Route::get('/previous-delivery-invoices', [DeliveryInvoiceController::class, 'previousDeliveryInvoice'])
        ->name('delivery.previous-invoice-index'); 
    
    Route::get('/{id}/previous-invoice-show', [DeliveryInvoiceController::class, 'previousInvoiceShow'])
        ->name('delivery.previous-invoice-show');

    /* Delivery status base section like confirmed / pending delivery route's */
    Route::get('/confirmed-deliveries', [DeliveryForCustomerController::class, 'confirmedDeliveries'])
        ->name('delivery.confirmed-delivery');


    Route::get('/pending-deliveries', [DeliveryForCustomerController::class, 'pendingDeliveries'])
        ->name('delivery.pending-delivery');

   

    Route::get('/pending-deliveries-to-confirmed', [DeliveryForCustomerController::class, 'pendingDeliveriesToConfirmed'])
        ->name('delivery.pending-deliveries-to-confirmed');

    Route::post('/pending-deliveries-to-confirmed/selected', [DeliveryForCustomerController::class, 'pendingDeliveriesToConfirmedSelected'])
        ->name('delivery.pending-deliveries-to-confirmed.selected');

    Route::post('/delivery/pending-deliveries-to-confirmed/selected/getPendingQRCode', [DeliveryForCustomerController::class, 'getPendingQRCode'])
        ->name('delivery.pending-deliveries-to-confirmed.getPendingQRCode');

    Route::get('/{order_id}/pending-delivery-show', [DeliveryForCustomerController::class, 'pendingDeliveryShow'])
        ->name('delivery.pending-delivery-show');

    Route::get('/{order_id}/confirmed-delivery-show', [DeliveryForCustomerController::class, 'confirmedDeliveryShow'])
        ->name('delivery.confirmed-delivery-show');

    Route::post('/reported-product/{id}/send', [DeliveryForCustomerController::class, 'reportedProductProccess'])
        ->name('delivery.reported-product');
   
});

Route::prefix('delivery')->middleware('role_or_permission:admin|super_admin|procurement_assistant|tso')
->name('delivery.')->group(function () { 
    /* Products report routes */
    Route::get('/rejected-products', [DeliveryForCustomerController::class, 'rejectedProducts'])
        ->name('rejected-products');

    Route::get('/report/{id}/accept', [DeliveryForCustomerController::class, 'acceptReport'])
        ->name('accept-report');

    Route::get('/report/{id}/denied', [DeliveryForCustomerController::class, 'deniedReport'])
        ->name('denied-report');


    /* Edit Invoice After Delivery /delivery/" + data.id + "/today-invoice-price-edit*/
    Route::get('/edit-invoices', [DeliveryForCustomerController::class, 'editInvoicesAfterDelivered'])
        ->name('editInvoicesAfterDelivered');
    Route::get('/editDeliveryInvoiceOrder/{id}/view', [DeliveryForCustomerController::class, 'editDeliveryInvoiceOrderView'])
        ->name('editDeliveryInvoiceOrder.show');

    Route::post('editDeliveryInvoiceOrder/update', [DeliveryForCustomerController::class, 'editDeliveryInvoiceOrderDestroy'])
    ->name('editDeliveryInvoiceOrder.update');

    // edit (added new product)invoice after delivery 
    Route::post('edit-and-added/delivery-invoice-order/update', [DeliveryForCustomerController::class, 'deliveryInvoiceEditAndUpdate']);

});

/* Qr Code Routes */
Route::prefix('qr-code')->middleware('role_or_permission:sales_executive|tso|super_admin|procurement_assistant|admin|delivery_executive')->group(function () {
    /* By this url you will get all the information of this order */
    Route::get('/{order_id}/information', [DeliveryForCustomerController::class, 'informationOfTheOrder']);
    /* By this url delivery will success */
    Route::get('/{stiker_id}/delivered', [DeliveryForCustomerController::class, 'deliveredOrderInformantion']);
});


/* Delivery invoice edit Routes */

Route::prefix('delivery')
->middleware('role_or_permission:super_admin|tso|procurement_assistant|admin|investor|sales_executive')
->group(function () {
     /* order invoice edit price */
    Route::get('/{id}/today-invoice-price-edit', [DeliveryInvoiceController::class, 'todayInvoiceEditPrice'])
        ->name('delivery.today-invoice-price-edit');
    /* Delivery invoice edit price */
    Route::post('/edit/invoices/price', [DeliveryInvoiceController::class, 'editInvoicePrice'])
        ->name('delivery.invoice.submit.price');

    /* Delivery invoice edit customer Note */ 
    Route::post('/edit/today/invoices/customerNote', [DeliveryInvoiceController::class, 'todayInvoiceEditCustomerNote'])
        ->name('delivery.today-invoice-customer-note-edit');   
});

Route::prefix('delivery')
->middleware('role_or_permission:super_admin|tso|procurement_assistant|admin|investor')
->group(function () {
     Route::get('/{id}/previous-invoice-price-edit', [DeliveryInvoiceController::class, 'previousInvoicePriceEdit'])
        ->name('delivery.previous-invoice-edit'); 
    /* Delivery invoice edit price */
    Route::post('/edit/previous/invoices/price', [DeliveryInvoiceController::class, 'previousEditInvoicePriceSubmit'])
        ->name('delivery.previous.invoice.submit.price');
    
     /* Delivery invoice edit customer Note */ 
    Route::post('/edit/previous/invoices/customerNote', [DeliveryInvoiceController::class, 'previousInvoiceEditCustomerNote'])
        ->name('delivery.previous-invoice-customer-note-edit');     
    
    /* Delivery invoice apiFetch  by date*/ 
    Route::post('/previousInvoiceDelivaryOrders/apiFetch/ByDate', [DeliveryInvoiceController::class, 'apiFetchInvoiceByDate'])
        ->name('delivery.previousInvoiceDelivaryOrders.apiFetch.ByDate');

    /* Delivery invoice item added*/ 
    Route::post('/today/delivery-invoice-editAndUpdate', [DeliveryInvoiceController::class, 'todayDeliveryInvoiceEditORUpdate']);
    Route::post('/delivery-invoice-editAndUpdate', [DeliveryInvoiceController::class, 'deliveryInvoiceEditORUpdate']);

        
});


