<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReportListTruck extends Model
{
    use HasFactory;
    protected $fillable = [
        'date',
        'total_orders',
        'truck_tracking',
    ];


    public function truckAssigns($id)
    {
        $truck_assigns = TruckAssign::select()->where('truck_trucking_id', $id)
        ->orderBy('id', 'asc')
        ->get();
        return $truck_assigns;
    }

    

}
