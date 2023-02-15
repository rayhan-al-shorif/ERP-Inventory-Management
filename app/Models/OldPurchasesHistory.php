<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldPurchasesHistory extends Model
{
    use HasFactory;

    protected $fillable = [
        'purchaser_id',
        'total_requirement_id',
        'image',
    ];
}
