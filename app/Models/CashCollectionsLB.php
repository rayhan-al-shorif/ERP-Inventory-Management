<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CashCollectionsLB extends Model
{
    use HasFactory;

    protected $fillable = [
        'sales_ex_id',
        'total_sale',
        'paid',
        'due',
        'damage',
        'date',
    ];

    protected $table = 'cash_collections_lb';
    
}
