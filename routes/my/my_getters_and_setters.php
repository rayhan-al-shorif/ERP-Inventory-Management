<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MyApiGettersController;

Route::group(['prefix' => 'api-getters'],function(){
 Route::get('auth-user-unreadnotifications', [MyApiGettersController::class , 'authUserUnreadNotifications']);
 Route::get('clear-all-unreadnotifications', [MyApiGettersController::class , 'clearAll']);
 Route::get('all-unreadnotifications', [MyApiGettersController::class , 'allUnreadNotification']);
 Route::get('read-unreadnotification/{id}', [MyApiGettersController::class , 'readTheNotification']);
});