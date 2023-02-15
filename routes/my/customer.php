<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CustomerPaymentController;
use App\Http\Controllers\PaymentHistoryController;
use App\Http\Controllers\CustomerPreviousPaymentController;

// Route::resource('customer', CustomerController::class)->middleware('permission:customer-create');

Route::get('customer', [CustomerController::class, 'index'])
    ->name('customer.index')
    ->middleware('role_or_permission:customer-view|tso|procurement_assistant');
// begin::test

Route::get('customer-test', [CustomerController::class, 'testIndex'])
->name('customer.test')
->middleware('role_or_permission:customer-view|tso|admin|super_admin|sales_manager|sales_executive|procurement_assistant');


Route::get('customer/create', [CustomerController::class, 'create'])
    ->name('customer.create')
    ->middleware('role_or_permission:customer-create|tso|procurement_assistant');

Route::post('customer', [CustomerController::class, 'store'])
    ->middleware('role_or_permission:customer-create|tso|procurement_assistant')
    ->name('customer.store');

Route::get('customer/{customer}', [CustomerController::class, 'show'])
    ->name('customer.show')
    ->middleware('role_or_permission:customer-view|tso|procurement_assistant');

Route::get('customer/{customer}/edit', [CustomerController::class, 'edit'])
    ->name('customer.edit')
    ->middleware('role_or_permission:customer-edit|sales_executive|tso|procurement_assistant');

Route::put('customer/{customer}', [CustomerController::class, 'update'])
    ->name('customer.update')
    ->middleware('role_or_permission:customer-edit|sales_executive|tso|procurement_assistant');
    

Route::delete('customer/{customer}', [CustomerController::class, 'destroy'])
    ->name('customer.destroy')
    ->middleware('permission:customer-delete');
/*
* Api Routes
*/
Route::prefix('api/customer')
    ->name('customer.')
    ->group(function () {
    Route::get('/fetch', [CustomerController::class, 'fetchCustomers'])
        ->name('fetch')
        ->middleware('role_or_permission:customer-view|sales_executive|tso|procurement_assistant');

    Route::get('/fetchAllCustomer', [CustomerController::class, 'fetchAllCustomer'])
        ->name('fetchAllCustomer')
        ->middleware('role_or_permission:customer-view|sales_executive|tso|procurement_assistant');

    Route::get('/{id}/customer-data', [CustomerController::class, 'customerData'])
        ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant');
    // All action by api
        
    Route::post('/active', [CustomerController::class, 'customerActivation'])
    ->name('customer.active')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant');
    
    Route::post('/inactive', [CustomerController::class, 'customerInactivation'])
    ->name('customer.inactive')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant');

    Route::post('/showProfile', [CustomerController::class, 'customerShowProfile'])
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
    ->name('customer.showProfile');
    
    Route::post('/delete', [CustomerController::class, 'customerDelete'])
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant')
    ->name('customer.delete');

});

Route::get('customer/{customer}/status', [CustomerController::class, 'customerStatus'])
    ->name('customer.status')
    ->middleware('role_or_permission:customer-status-update|tso|procurement_assistant');

Route::post('customer/{id}/payment', [CustomerController::class, 'customerPayment'])
    ->name('customer.payment')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant');

Route::get('customer/payment_history/{id}', [CustomerController::class, 'payment_history'])
    ->name('customer.payment_history')
    ->middleware('role_or_permission:admin|super_admin|tso|procurement_assistant');

Route::get('customer/types/select', [CustomerController::class, 'defineACustomerTypes'])
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
    ->name('customer.define.type');

Route::post('customer/types/update', [CustomerController::class, 'updateCustomerTypes'])
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
    ->name('customer.update.type');
/* My routes for payment system */
Route::post(
    'customer/check-phone-number',
    [CustomerController::class, 'checkPhoneNumber']
)
    ->middleware('role_or_permission:super_admin|admin|sales_executive|tso|procurement_assistant');

Route::prefix('customers/payments')->middleware('role_or_permission:sales_executive|super_admin|admin|tso|procurement_assistant')
    ->name('customers.payments.')
    ->group(function () {
        Route::get('/', [CustomerPaymentController::class, 'index'])
            ->name('index');

        Route::post('/update', [CustomerPaymentController::class, 'update'])
            ->name('update');

        Route::get('/fetch-all-data', [CustomerPaymentController::class, 'fetchAllData'])
            ->name('fetchAllData');
        Route::get('/fetch-payment-history-all-data', [CustomerPaymentController::class, 'fetchAllPaymentHistoryData'])
            ->name('fetchAllPaymentHistoryData');

        // Update Customer Payment History Data
        Route::post('/update-history', [CustomerPaymentController::class, 'updatePaymentHistory'])
            ->name('updatePaymentHistory');
    });

// Payment Status Approved Middleware Change
Route::post('customers/payments/{id}/status', [CustomerPaymentController::class, 'customerPaymentStatus'])
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
    ->name('customers.payments.status');


// Customer Previous Payment 
Route::prefix('customers/previous/payments')
->middleware('role_or_permission:sales_executive|super_admin|admin|tso|procurement_assistant')
    ->name('customers.previous.payments.')
    ->group(function () {
        Route::get('/', [CustomerPreviousPaymentController::class, 'index'])
            ->name('index');
        // Update Customer Payment History Data
        Route::post('/update', [CustomerPreviousPaymentController::class, 'update'])
            ->name('update');

        Route::get('/fetch-all-data', [CustomerPreviousPaymentController::class, 'fetchAllData'])
            ->name('fetchAllData');
        Route::get('/fetch-payment-history-data', [CustomerPreviousPaymentController::class, 'fetchAllPaymentHistoryData'])
            ->name('fetchAllPaymentHistoryData');

        // Update Customer Payment History Data
        Route::post('/update-history', [CustomerPreviousPaymentController::class, 'updatePaymentHistory'])
            ->name('updatePaymentHistory');
    });

// Payment Status Approved Middleware Change
Route::post('customers/previous/payments/{id}/status', [CustomerPreviousPaymentController::class, 'customerPaymentStatus'])
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
    ->name('customers.previous.payments.status');


// Pinik customer Route
Route::prefix('customers/pinik')
->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant')
->group(function () {
    Route::get('/', [CustomerController::class, 'pinikCustomersindex'])
        ->name('customers.pinik');
    Route::get('customers/pinik/fetch', [CustomerController::class, 'pinikCustomersFetch'])
        ->name('customers.pinik.fetch');    
});

// set otp in order time
Route::prefix('customers')
->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant|sales_executive')
->group(function () {
    Route::get('/{id}/setOtp', [CustomerController::class, 'customersSetOtp'])
        ->name('customers.setOtp');  
    Route::post('/submitOtp', [CustomerController::class, 'customersSubmitOtp'])
        ->name('customers.submitOtp');  
});


    
