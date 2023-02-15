<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NagadPayment extends Model
{
    use HasFactory;
    protected $fillable = [
        'tx_id'
    ];
}
