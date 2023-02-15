<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'smg_manager_id',
        'category_id',
        'unit_id',
        'name',
        'image',
        'sku',
        'package',
        'description',
    ];

    protected $hidden = [
        'created_at',
        'updated_at',
        'description'
    ];
    
    public function price()
    {
        return $this->hasMany(Price::class);
    }

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function requirements()
    {
        return $this->hasMany(Requirement::class, 'product_id', 'id');
    }

    public function variants()
    {
        return $this->belongsToMany(Variant::class, 'product_variant', 'product_id', 'variant_id');
    }
    public function pv_sku($product_id, $variant_id)
    {
       $getPVSku = PVSku::select('pv_sku')->where('product_id', $product_id)->where('variant_id', $variant_id)->first();
        if($getPVSku){
            return $getPVSku->pv_sku;
        }else{
            return "Please Generate SKU";
        }
    }

    public function tag()
    {
        return $this->hasOne(ProductTags::class, 'product_id', 'id');
    }

    public function previousPrice()
    {
        $prevPrice = OldPrice::select('old_prices.*')
            ->join('products', 'products.id', '=', 'old_prices.product_id')
            ->join('variants', 'variants.id', '=', 'old_prices.variant_id')
            ->whereDate('created_at', Carbon::yesterday()->toDateString())
            ->get();

        return  $prevPrice;
    }


    // For Mobile App

    function basePrice($productId)
    {
        $findProduct = Product::findOrFail($productId);
        $basePrice = 1000000; // Default basePrice
        $getPrice = 0; // Default getPrice
        foreach ($findProduct->variants as $key => $variant) {
            $price = Price::select('manual','app')
                 ->where('product_id', $productId)
                 ->where('variant_id', $variant->id)
                 ->first();
             if($price) {
                 if($price->app > 0) {
                     $getPrice = $price->app;
                 } else {
                     $getPrice = $price->manual;
                 }
                if($basePrice > $getPrice) {
                    $basePrice = $getPrice;
                }
             }
        }
        return $basePrice;
    }
}
