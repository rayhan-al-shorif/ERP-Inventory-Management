<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductOrderUnit extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id',
        'variant_id',
        'units',

    ];

    protected $casts = [
        'units' => 'array',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function variant()
    {
        return $this->belongsTo(Variant::class);
    }

    protected $table = 'product_order_units';
}
