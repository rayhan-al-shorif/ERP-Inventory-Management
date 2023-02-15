<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PurchasesHistory extends Model
{
    use HasFactory;

    protected $fillable = [
        'purchaser_id',
        'total_requirement_id',
        'image',
    ];

    public function purchaser()
    {
        return $this->belongsTo(User::class, 'purchaser_id', 'id');
    }

    public function totalRequirement()
    {
        return $this->belongsTo(TotalRequirement::class, 'total_requirement_id', 'id');
    }
}
