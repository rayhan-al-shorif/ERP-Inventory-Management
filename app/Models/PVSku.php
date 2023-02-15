<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PVSku extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'product_id',
        'variant_id',
        'pv_sku',
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
