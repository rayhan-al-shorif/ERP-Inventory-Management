<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldPackagingDeliveryCode extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'product_id',
        'variant_id',
        'delivery_code',
        'group_by',
        'quantity',
        'delivery_status',
        'token',
    ];
}
