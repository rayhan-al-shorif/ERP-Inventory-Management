<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UnitAndPurchase extends Model
{
    use HasFactory;

    protected $fillable = [
        'total_unit',
        'purchase_amount',
        'given_amount',
        'date'
    ];
}
