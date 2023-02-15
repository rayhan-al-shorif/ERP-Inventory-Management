<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldPrice extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'variant_id',
        'purchase',
        'manual',
        'new_c',
        'normal',
        'loyal',
        'zone_one',
        'zone_two',
        'zone_three',
        'zone_four',
        'zone_five',
        'zone_six',
        'zone_seven',
        'zone_eight',
        'zone_nine',
        'zone_ten',
        'date'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
    public function variant()
    {
        return $this->belongsTo(Variant::class);
    }
    public function orderList()
    {
        return $this->belongsTo(OrderList::class);
    }
}
