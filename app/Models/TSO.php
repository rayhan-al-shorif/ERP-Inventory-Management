<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TSO extends Model
{
    use HasFactory;

    protected $fillable = [
        'tso',
        'assign_saller_id'
    ];
}
