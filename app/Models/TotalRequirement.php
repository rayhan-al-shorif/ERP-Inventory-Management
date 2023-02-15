<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TotalRequirement extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'variant_id',
        'required_qty',
        'supplied_qty',
        'total_price',
        'note',
        'status',
        'permission',
        'added_by',
    ];


     public function users()
    {
        return $this->belongsTo(User::class, 'added_by');
    }


    public function product()
    {
        return $this->belongsTo(Product::class);
    }
   

    public function variant()
    {
        return $this->belongsTo(Variant::class);
    }

    public function images()
    {
        return $this->hasMany(PurchasesHistory::class, 'total_requirement_id', 'id');
    }

    public function orderList($product_id , $variant_id)
    {
        $orderList = OrderList::select()
        ->where('product_id' , $product_id)
        ->where('variant_id' , $variant_id)
        ->get();

        return $orderList;
    }
}
