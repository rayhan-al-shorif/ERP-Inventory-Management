<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class CustomerPayment extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'order_id',
        'payment',
        'total_bill',
        'total_due',
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function paymentHistories()
    {
        return $this->hasMany(CustomerPaymentHistory::class, 'customer_payment_id', 'id');
    }
}
