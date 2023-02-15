<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductAndVarient extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id',
        'variant_id',
        'pv_sku',
    ];

    protected $table = 'product_and_varients';
}
