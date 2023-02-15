<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supply extends Model
{
    use HasFactory;

    protected $fillable = 
    [
        'supplier_id',
        'purchase_management_id',
        'supply_no',
        'note',
        'date',
        'status',
    ];

    protected $cast = [
        'date' => 'date',
    ];

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    // purchase team management relation
    public function purchaseManagement()
    {
        return $this->belongsTo(Purchase_management::class);
    }
}
