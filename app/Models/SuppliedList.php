<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuppliedList extends Model
{
    use HasFactory;

    protected $fillable = 
    [
        'supply_id',
        'product_id',
        'variant_id',
        'quantity',
        'note',
    ];
}
