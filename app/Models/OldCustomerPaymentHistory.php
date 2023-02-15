<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldCustomerPaymentHistory extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_payment_id',
        'payment',
        'image',
        'status',
        'added_by',
        'approved_by'
    ];
    public function added_by()
    {
        return $this->belongsTo(User::class, 'added_by');
    }
    public function approved_by()
    {
        return $this->belongsTo(User::class, 'approved_by');
    }

    public function oldCustomerPayment()
    {
        return $this->belongsTo(OldCustomerPayment::class, 'customer_payment_id', 'id');
    }
}
