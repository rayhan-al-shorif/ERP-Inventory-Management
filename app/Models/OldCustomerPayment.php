<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldCustomerPayment extends Model
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
    public function oldOrder()
    {
        return $this->belongsTo(OldOrder::class, 'order_id', 'id');
    }

    public function paymentHistories()
    {
        return $this->hasMany(CustomerPaymentHistory::class, 'customer_payment_id', 'id');
    }
}
