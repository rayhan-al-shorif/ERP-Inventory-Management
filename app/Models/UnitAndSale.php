<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UnitAndSale extends Model
{
    use HasFactory;

     protected $fillable = [
        'total_unit',
        'total_sale',
        'date'
    ];
}
