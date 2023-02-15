<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HandBalance extends Model
{
    use HasFactory;

    protected $fillable = [
        'stack_name',
        'opening_balance',
        'balance',
    ];
}
