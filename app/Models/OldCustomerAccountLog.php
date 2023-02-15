<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldCustomerAccountLog extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'order_id',
        'image',
        'payment',
    ];
}
