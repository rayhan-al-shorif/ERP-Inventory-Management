<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldReportListTruck extends Model
{
    use HasFactory;
     protected $fillable = [
        'date',
        'total_orders',
        'truck_tracking',
    ];


    public function oldTruckAssigns($id)
    {
        $truck_assigns = OldTruckAssign::select()->where('truck_trucking_id', $id)
        ->orderBy('id', 'asc')
        ->get();
        return $truck_assigns;
    }

}
