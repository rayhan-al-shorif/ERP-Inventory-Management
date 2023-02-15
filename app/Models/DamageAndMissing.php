<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DamageAndMissing extends Model
{
    use HasFactory;
     protected $fillable = [
        'orderList_id',
        'damage_qty',
    ];
}
