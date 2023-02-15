<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Variant extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'class'
    ];

    protected $hidden = [
        'created_at',
        'updated_at',
        'pivot',
        'class'
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_variant', 'variant_id', 'product_id');
    }

    public function pv_sku()
    {
        return $this->hasOne(ProductAndVarient::class, 'variant_id', 'id');
    }
}
