<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderList extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'product_id',
        'variant_id',
        'quantity',
        'damage_qty',
        'missing_qty',
        'note',
        'status', // 0 means no edited... and 1 means added from edited part
        'dm_status', 
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function price()
    {
        return $this->belongsTo(Price::class, 'product_id');
    }

    public function variant()
    {
        return $this->belongsTo(Variant::class);
    }

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    /* Per order counting */
    public function perPrice($id, $type)
    {
        $order = OrderList::findOrFail($id);
        $find_change_pricing = ChangePricing::select()
            ->where('order_lists_id', $id)
            ->first();

        if($find_change_pricing){
           return $find_change_pricing->change_price;
        }else {

            $price = Price::select($type, 'manual')
            ->where('product_id', $order->product_id)
            ->where('variant_id', $order->variant_id)
            ->first();

            if ($price) {
                if ($price->$type > 0) {
                    return $price->$type;
                } else {
                    return $price->manual + $price->$type;
                }
            } else {
                return $price = 0;
            }
        }

    }

    public function invoiceEditedBy($id){
        $orderListID = OrderList::findOrFail($id);
        $editUser = ChangePricing::select()
            ->where('order_lists_id', $orderListID->id)
            ->first();
        if($editUser){
            $getUser = User::findOrFail($editUser->added_by);
            return $getUser->name;
        }else{
            return "No Edit";
        }
    }

    public function pvSku($product_id, $variant_id){
        $product = Product::findOrFail($product_id);
        $variant = Variant::findOrFail($variant_id);
        $porductAndVarient = ProductAndVarient::select()
        ->where('product_id', $product_id)
        ->where('variant_id', $variant_id)
        ->first();
        // return $product->sku;
        if($porductAndVarient) {
            return $porductAndVarient->pv_sku;
        } else {
            return null;
        }
    }

    public function damageMissingPrice($id,$type){
        $countPrice = 0;
        $orderList = OrderList::findOrFail($id);
        $getPrice = $orderList->perPrice($id, $type);
        $countPrice = $getPrice * $orderList->damage_qty;
        $countPrice += $getPrice * $orderList->missing_qty;
        return $countPrice;
    }
  
}
