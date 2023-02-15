<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChangePricing extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'order_lists_id',
        'change_price',
        'added_by',
    ];

     public function added_by()
    {
        return $this->belongsTo(User::class, 'added_by');
    }
}
