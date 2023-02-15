<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;


class OldOrderList extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'product_id',
        'variant_id',
        'quantity',
        'date',
        'note',
        'status',
        'dm_status',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function oldOrder()
    {
        return $this->belongsTo(OldOrder::class);
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
    public function perPrice($id, $type, $date)
    {
        $order = OldOrderList::findOrFail($id);

         $find_change_pricing = OldChangePricing::select()
            ->where('order_lists_id', $id)
            ->first();

        if($find_change_pricing){
           return $find_change_pricing->change_price;
        }else{
        $price = OldPrice::select($type, 'purchase', 'manual')
            ->where('product_id', $order->product_id)
            ->where('variant_id', $order->variant_id)
            ->where('date', $date)
            ->first();

            
        if ($price) {
            $type_price = $price->$type;
            $price = (float) $price->manual? (float) $price->manual + (float) $type_price : 0;
            return $price;
        } else {
            return $price = 0;
        }
        }
    }
    public function oldPerPrice($id, $type,$date)
    {
        $oldOrderlist = OldOrderList::findOrFail($id);
        $price = OldPrice::select($type, 'purchase', 'manual')
            ->where('product_id', $oldOrderlist->product_id)
            ->where('variant_id', $oldOrderlist->variant_id)
            ->whereDate('date', $date)
            ->first();

        if ($price) {
            $type_price = $price->$type;
            $price = (float) $price->purchase  ? (float) $price->manual + (float) $type_price : 0;
            return $price;
        } else {
            return $price = 0;
        }
    }

    public function oldPerProductPrice($id,$type, $date){
         $oldOrderlist = OldOrderList::findOrFail($id);
         $find_change_pricing = OldChangePricing::select()
            ->where('order_lists_id', $id)
            ->first();

        if($find_change_pricing){
           return $find_change_pricing->change_price;
        }else{
            $price = OldPrice::select($type, 'purchase', 'manual','date','product_id','variant_id')
            ->where([
                ['product_id', $oldOrderlist->product_id],
                ['variant_id', $oldOrderlist->variant_id]
            ])
            ->whereDate('date', $date)
            ->first();
            
            if ($price) {
                $type = $price->$type;
                $newPrice = (float) $price->manual  ? (float) $price->manual + (float) $type : 0;
                // carbon
                $date = Carbon::parse($price->date);
                $dateFixed = Carbon::parse('01-06-2022');
                if($date > $dateFixed){
                    if((float) $type > 0){
                    $newPrice = (float) $type;
                    } else{
                        $newPrice =  (float) $price->manual + (float) $type;
                    }
                }
                return $newPrice;
        } else {
            return $newPrice = 0;
        }
        }


        
    }

    public function totalQuantity($id, $start_date, $end_date){
        $total_quantity = 0;
        $oldOrders = OldOrder::select()
            ->with('oldOrderList')
            ->whereBetween('date', [$start_date, $end_date])
            ->get();
        $findOldOrderList = OldOrderList::findOrFail($id);    
        foreach ($oldOrders as $oldOrder) {
            foreach ($oldOrder->oldOrderList as $oldOrderList) {
                if($findOldOrderList->product_id == $oldOrderList->product_id && $findOldOrderList->variant_id == $oldOrderList->variant_id){
                    $total_quantity += $oldOrderList->quantity;
                }
            }
        }     
       return $total_quantity;     
    }
    public function getPerPrice($id, $start_date, $end_date){
        $total_price = 0;
        $oldOrders = OldOrder::select()
            ->with('oldOrderList')
            ->whereBetween('date', [$start_date, $end_date])
            ->get();
        $findOldOrderList = OldOrderList::findOrFail($id);    
        foreach ($oldOrders as $oldOrder) {
            foreach ($oldOrder->oldOrderList as $oldOrderList) {
                if($findOldOrderList->product_id == $oldOrderList->product_id && $findOldOrderList->variant_id == $oldOrderList->variant_id){
                    $total_price = $this->oldPerProductPrice($oldOrderList->id, $oldOrder->customer_type,$oldOrder->date);
                    goto priceEnd;
                }
            }
        }
        priceEnd:     
       return $total_price;     
    }

    public function oldInvoiceEditedBy($id){

        $editUser = OldChangePricing::select()
        ->where('order_lists_id', $id)
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
        if($porductAndVarient) {
            return $porductAndVarient->pv_sku;
        } else {
            return null;
        }
    }

     public function damageMissingPrice($id,$type){
        $countPrice = 0;
        $oldOrderList = OldOrderList::findOrFail($id);
        $getPrice = $oldOrderList->oldPerProductPrice($id,$type, $oldOrderList->oldOrder->date);
        $countPrice = $getPrice * $oldOrderList->damage_qty;
        $countPrice += $getPrice * $oldOrderList->missing_qty;
        return $countPrice;
    }


}
