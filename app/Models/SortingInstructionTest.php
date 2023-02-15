<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SortingInstructionTest extends Model
{
    use HasFactory;

     protected $fillable = [
        'product','variant','unit','pack_size','total_packets'
    ];
}
