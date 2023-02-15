<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Truck extends Model
{
    use HasFactory;

    protected $fillable = [
        'truck_no',
        'zone_id',
        'truck_unit',
    ];

    public function zone()
    {
        return $this->belongsTo(Zone::class);
    }
}
