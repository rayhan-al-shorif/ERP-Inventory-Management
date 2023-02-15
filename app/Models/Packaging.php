<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Packaging extends Model
{
    use HasFactory;


    protected $fillable = [
        'order_id',
        'product_id',
        'variant_id',
        'group_by',
        'packing_by',
        'quantity',
    ];


    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function orderList()
    {
        return $this->belongsTo(OrderList::class);
    }
    public function order()
    {
        return $this->belongsTo(Order::class);
    }
    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }
}
