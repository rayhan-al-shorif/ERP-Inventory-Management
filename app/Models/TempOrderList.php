<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TempOrderList extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'old_id',
        'product_id',
        'variant_id',
        'quantity',
        'note',
        'status',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function variant()
    {
        return $this->belongsTo(Variant::class);
    }
}
