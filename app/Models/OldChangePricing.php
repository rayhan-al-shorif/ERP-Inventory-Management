<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldChangePricing extends Model
{
    use HasFactory;

     protected $fillable = [
        'order_lists_id',
        'added_by',
        'change_price',
    ];
     public function added_by()
    {
        return $this->belongsTo(User::class, 'added_by');
    }
}
