<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pandamart extends Model
{
    use HasFactory;

    protected $fillable = [
       'fashol_customer_id' ,'pandamart_customer_id'
    ];
}
