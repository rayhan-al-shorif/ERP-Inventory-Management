<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class OldProductReport extends Model
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
        return $this->belongsTo(OldPackagingDeliveryCode::class, 'packaging_delivery_code_id', 'id');
    }

    public function perPrice($product_id, $variant_id, $type)
    {
        $price = OldPrice::select('id', $type, 'purchase', 'manual')
            ->where('product_id', $product_id)
            ->where('variant_id', $variant_id)
            ->first();
        $type = $type;
        $type_price = $price->$type;

        $price = (float) $price->purchase  ? (float) $price->purchase + (float) $type_price : 0;
        return $price;
    }
}
