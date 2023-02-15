<?php
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'retailer' , 'middleware' => 'auth:sanctum' , 'namespace' => 'App\Http\Controllers\Applications\Retailer'],function(){
    foreach (glob(base_path('routes/application_apis/retailer/*.php')) as $route) {
        if($route != "/home/admin/web/appnew.fashol.com/public_html/routes/application_apis/retailer/unauthenticated.php"){
            require_once $route;
        }
    }
});

require(base_path('routes/application_apis/retailer/unauthenticated.php'));