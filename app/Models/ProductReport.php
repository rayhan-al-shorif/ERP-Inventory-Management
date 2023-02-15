<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductReport extends Model
{
    use HasFactory;

    protected $fillable =
    [
        'packaging_delivery_code_id',
        'delivery_executive_id',
        'qty',
        'cost',
        'note',
        'status'
    ];

    public function packDeliCode()
    {
        return $this->belongsTo(PackagingDeliveryCode::class, 'packaging_delivery_code_id', 'id');
    }

    public function perPrice($product_id, $variant_id, $type)
    {
        $price = Price::select('id', $type . '_price', 'purchase_price', 'manual_price')
            ->where('product_id', $product_id)
            ->where('variant_id', $variant_id)
            ->first();
        $type = $type . '_price';
        $type_price = $price->$type;

        $price = (float) $price->purchase_price  ? (float) $price->purchase_price + (float) $type_price : 0;
        return $price;
    }
}
