<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerPaymentHistory extends Model
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

    public function customerPayment()
    {
        return $this->belongsTo(CustomerPayment::class, 'customer_payment_id', 'id');
    }

    public function payments()
    {
        return $this->hasMany(CustomerPayment::class, 'customer_id', 'id');
    }
    public function oldPayments()
    {
        return $this->hasMany(OldCustomerPayment::class, 'customer_id', 'id');
    }




    private $total_due = 0;
    public function totalDue($id)
    {
        $customer = Customer::find($id);
        $customer->payments->each(function ($pay) {
            $this->total_due += $pay->total_due;
        });
        $customer->oldPayments->each(function ($pay) {
            $this->total_due += $pay->total_due;
        });
        return $this->total_due;
    }
    private $previousDue = 0;

    public function previousDue($id)
    {
        $customer = Customer::find($id);
        $customer->oldPayments->each(function ($pay) {
            $this->previousDue += $pay->total_due;
        });
        return $this->previousDue;
    }

    private $total_payment = 0;
    public function totalPayment($id)
    {
        $customer = Customer::find($id);
        $customer->payments->each(function ($pay) {
            $this->total_payment += $pay->payment;
        });
        $customer->oldPayments->each(function ($pay) {
            $this->total_payment += $pay->payment;
        });
        return $this->total_payment;
    }
}
