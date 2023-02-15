<?php

namespace App\Models;

use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldOrder extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'sales_executive_id',
        'order_assign_sales_executive_id',
        'order_no',
        'customer_type',
        'status',
        'note',
        'date',
    ];


    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function sales_executive()
    {
        return $this->belongsTo(User::class, 'sales_executive_id', 'id');
    }
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function orderAssignSalesExecutive()
    {
        return $this->belongsTo(User::class, 'order_assign_sales_executive_id', 'id');
    }

    public function oldOrderList()
    {
        return $this->hasMany(OldOrderList::class, 'order_id', 'id');
    }

    public function oldPrice()
    {
        return $this->hasMany(OldPrice::class);
    }

    public function old_total_product_unit($id)
    {
        $total = 0;
        $oldOrderList = OldOrderList::where('order_id', $id)->get();
        foreach ($oldOrderList as $oldOrder) {
            $total += (float) $oldOrder->quantity;
        }
        return $total;
    }


    /* This is for old table price summations */
    public function oldTotalPrice($id)
    {
        $sumOfTotalPrice = 0;
        $findOrder = OldOrder::findOrFail($id);
        $oldOrder = OldOrder::select('old_orders.*')
            ->with(
                'customer',
                'sales_executive',
                'oldOrderList.oldOrder',
                'oldOrderList.product',
                'oldOrderList.product.price',
                'oldOrderList.product.unit',
                'oldOrderList.variant'
            )
            ->where('old_orders.id', $id)
            ->first();

            foreach($oldOrder->oldOrderList as $item){
                $perPrice = $item->oldPerProductPrice($item->id, $oldOrder->customer_type, $oldOrder->date);
                if($perPrice){
                    $sumOfTotalPrice += (float)$perPrice * (float)$item->quantity;     
                }
            }
 
        return (float) $sumOfTotalPrice;

    }

    public function paymentHistory()
    {
        return $this->hasMany(Payment_history::class, 'order_id', 'id');
    }

    public function dateBaseTotalPriceForCalender($id)
    {
        $order = OldOrder::find($id);

        $product_id = [];
        $variant_id = [];
        $quantitys = [];

        foreach ($order->oldOrderList as $olist) {
            array_push($product_id, $olist->product_id);
            array_push($variant_id, $olist->variant_id);
            array_push($quantitys, $olist->quantity);
        }

        $price = OldPrice::select($order->customer_type , 'purchase', 'manual', 'id', 'product_id', 'variant_id')
            ->whereIn('product_id', $product_id)
            ->whereIn('variant_id', $variant_id)
            ->whereDate('date', $order->date)
            ->get();

        $sum = 0;
        for ($i = 0; $i < count($price); $i++) {
            $type_price = $order->customer_type ;
            $type_wise_price = $price[$i]->$type_price;
            $main_price = (float) $type_wise_price + (float) $price[$i]->manual;
            for ($j = 0; $j < count($quantitys); $j++) {
                $sum += (float) $main_price * (float) $quantitys[$j];
            }
        }

        return $sum;
    }

    // Count total quantity from old  order List table 
    public function oldTotalQuantity($id)
    {
        $order = OldOrder::find($id);
        $total_quantity = 0;
        foreach ($order->oldOrderList as $olist) {
            $total_quantity += $olist->quantity;
        }
        return $total_quantity;
    }
}
