<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldPaymentHistory extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'customer_account_log_id',
        'customer_id',
        'payment_history',
        'image',
    ];
}
