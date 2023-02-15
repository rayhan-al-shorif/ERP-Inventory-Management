<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Salary_management extends Model
{
    use HasFactory;
    protected $fillable = [
        'employee_id',
        'employee_name',
        'designation',
        'position',
        'pay_from',
        'pay_by',
        'amount',
        'account',
        'admin_status',
        'super_admin_status',
    ];
    public function users()
    {
        return $this->belongsTo(User::class, 'pay_by');
    }
    public function accounts()
    {
        return $this->belongsTo(BankBalance::class, 'account');
    }
}
