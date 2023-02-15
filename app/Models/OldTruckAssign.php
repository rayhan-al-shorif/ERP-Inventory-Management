<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldTruckAssign extends Model
{
    use HasFactory;
     protected $fillable = [
        'truck_truckings',
        'truck_id',
        'order_id'
    ];

    public function truck()
    {
        return $this->belongsTo(Truck::class,'truck_id','id');
    }
    public function oldOrder()
    {
        return $this->belongsTo(OldOrder::class,'order_id','id');
    }
}
