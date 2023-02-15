<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    protected $fillable = [
        'supplier_name',
        'product_name',
        'market_name',
        'phone',
        'district',
        'banking_mobile',
        'product_address',
        'business_date',
        'supplier_payment',
        'about_fashol',
        'account_status',
        'image',
    ];
}
