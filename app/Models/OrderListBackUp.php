<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderListBackUp extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'product_id',
        'variant_id',
        'quantity',
        'damage_qty',
        'missing_qty',
        'note',
        'status', // 0 means no edited... and 1 means added from edited part
        'dm_status', 
    ];
}
