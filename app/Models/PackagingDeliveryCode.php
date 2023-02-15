<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PackagingDeliveryCode extends Model
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

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function variant()
    {
        return $this->belongsTo(Variant::class, 'variant_id', 'id');
    }

    public function productReport()
    {
        return $this->belongsTo(ProductReport::class, 'packaging_delivery_code_id', 'id');
    }
}
