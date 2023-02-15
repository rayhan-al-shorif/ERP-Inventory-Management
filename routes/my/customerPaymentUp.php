<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerPaymentUpController;


Route::prefix('customer-payment-up')
    ->middleware('role_or_permission:super_admin|admin|sales_executive|sales_manager|procurement_assistant|tso')
    ->name('customer-payment-up.')
    ->group(function () {
        // others
        Route::get('/', [CustomerPaymentUpController::class, 'index'])
        ->name('index');
        Route::get('/create', [CustomerPaymentUpController::class, 'create'])
        ->name('create');        
        Route::post('/store', [CustomerPaymentUpController::class, 'store'])
        ->name('store');
        Route::delete('/distroy/{id}', [CustomerPaymentUpController::class, 'distroy'])
        ->name('distroy');
        
        
        // fetch and set the data

        Route::post('/getSalesValueBySalesExceutive', [CustomerPaymentUpController::class, 'getSalesValueBySalesExceutive'])
        ->name('getSalesValueBySalesExceutive');

        Route::get('/getRoleWithUserID', [CustomerPaymentUpController::class, 'getRoleWithUserID'])
        ->name('getRoleWithUserID');

        Route::post('/getSallers', [CustomerPaymentUpController::class, 'getSallers'])
        ->name('getSallers');

        Route::post('/selectSalerID', [CustomerPaymentUpController::class, 'selectSalerID'])
        ->name('selectSalerID');
        Route::get('/order-amount/{orderID}', [CustomerPaymentUpController::class, 'orderAmount'])
        ->name('orderAmount');
        Route::post('/selectCustomerID', [CustomerPaymentUpController::class, 'selectCustomerID'])
        ->name('selectCustomerID');

        // payment status update
        Route::get('/status/{id}', [CustomerPaymentUpController::class, 'paymentStatus'])
        ->name('status');
        Route::get('/paymentStatusApi/{id}', [CustomerPaymentUpController::class, 'paymentStatusApi'])
        ->name('paymentStatusApi');
});


Route::prefix('customer-payment-up-transaction')
    ->middleware('role_or_permission:super_admin|admin|sales_executive|sales_manager|procurement_assistant|tso')
    ->name('customer-payment-up-transaction.')
    ->group(function () {
        // others
        Route::get('/', [CustomerPaymentUpController::class, 'customerPaymentUpTransactionIndex'])
        ->name('index');
        Route::post('/fetchDataByDate', [CustomerPaymentUpController::class, 'fetchDataByDate'])
        ->name('fetchDataByDate');
        Route::get('/{id}/delete', [CustomerPaymentUpController::class, 'deleteCustomerPaymentTransaction'])
        ->name('deleteCustomerPaymentTransaction');
       
});



    
