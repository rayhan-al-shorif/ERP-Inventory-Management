<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerPaymentUp extends Model
{
    use HasFactory;


    protected $fillable = [
        'customer_id',
        'sales_executive_id',
        'order_no',
        'amount',
        'payment_date',
        'payment_type',
        'payment_status',
        'tx_id',
    ];


    public function sales_executive()
    {
        return $this->belongsTo(User::class, 'sales_executive_id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class,'customer_id');
    }
    public function due($orderNo)
    {
        // findOrFail order by order number
        $due = 0;
        $order = Order::where('order_no', $orderNo)->first();
        if($order){
            $due = $order->total_price($order->id);
        }else{
            $oldOrder = OldOrder::where('order_no', $orderNo)->first();
            if($oldOrder){
                $due = $oldOrder->oldTotalPrice($oldOrder->id);
            }
        }
        return $due;
    }

}