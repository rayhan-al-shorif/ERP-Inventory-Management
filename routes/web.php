<?php

use App\Models\User;
use App\Models\Customer;
use Illuminate\Support\Facades\Route;


foreach (glob(base_path('routes/my/*.php')) as $route) {
    require_once $route;
}

