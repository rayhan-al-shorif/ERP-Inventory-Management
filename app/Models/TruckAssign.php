<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TruckAssign extends Model
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
    public function order()
    {
        return $this->belongsTo(Order::class,'order_id','id');
    }
    public function orders()
    {
        return $this->hasMany(Order::class,'order_id','id');
    }

     public function getQty(){
      return $this->hasMany(Order::class,'order_id','id')
      ->selectRaw('orders.order_lists.*,sum(quantity) as sum')->groupBy('product_id');
   }

}
