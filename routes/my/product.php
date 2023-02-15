<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;



Route::get('product', [ProductController::class, 'index'])
    ->name('product.index')->middleware('permission:product-view|tso|procurement_assistant');
Route::post('product/store', [ProductController::class, 'store'])
->name('product.store')->middleware('permission:product-create|tso|procurement_assistant');
Route::get('product/{product}/show', [ProductController::class, 'show'])
->name('product.show')->middleware('permission:product-view|tso|procurement_assistant');
Route::get('product/{product}/edit', [ProductController::class, 'edit'])
    ->name('product.edit')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant');
Route::put('product/{product}', [ProductController::class, 'update'])->name('product.update')->middleware('permission:product-edit');
Route::delete('product/{product}', [ProductController::class, 'destroy'])
    ->name('product.destroy')
    ->middleware('role_or_permission:super_admin|admin|tso|procurement_assistant');


/*
* Fetch all product-variants
*/
Route::get('product/variant/fetch', [ProductController::class, 'fetchVariants'])
    ->name('product.variant')
    ->middleware('permission:product-view|tso|procurement_assistant');
/*
* Api Routes
*/
Route::prefix('api/product')->name('product.')->group(function () {
    Route::get('/fetch', [ProductController::class, 'fetchProducts'])
    ->name('fetch')->middleware('permission:product-view|tso|procurement_assistant');
    Route::post('/store', [ProductController::class, 'store'])->name('store')
    ->middleware('permission:product-create|tso|procurement_assistant');
    Route::post('/{product}/update', [ProductController::class, 'update'])
    ->name('update')->middleware('permission:product-edit|tso|procurement_assistant');
});



// Product and variants status change when order will be created

Route::prefix('product-status')
->middleware('role_or_permission:super_admin|admin')
->group(function () {
    Route::get('/', [ProductController::class, 'productStatus']);
    Route::post('/update', [ProductController::class, 'productStatusUpdate']);
});