<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FarmerMeta extends Model
{
    use HasFactory;

    protected $fillable = [
        'farmer_id',
        'meta_key',
        'value',
    ];
}
