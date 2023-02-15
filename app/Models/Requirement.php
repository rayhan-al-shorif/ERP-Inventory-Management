<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Requirement extends Model
{
    use HasFactory;

    protected $fillable = [
        'zone_id',
        'product_id',
        'variant_id',
        'required_qty',
        'supplied_qty',
        'note',
        'status',
        'permission',
        'added_by'
    ];



     public function users()
    {
        return $this->belongsTo(User::class, 'added_by');
    }
    
    public function smgManager()
    {
        return $this->belongsTo(User::class, 'smg_manager_id', 'id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function variant()
    {
        return $this->belongsTo(Variant::class);
    }
}
