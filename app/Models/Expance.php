<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expance extends Model
{
    use HasFactory;
    protected $fillable = [
        'name_of_expense',
        'expense_by',
        'reason_of_expense',
        'amount',
        'account',
        'payment_status',
        'admin_status',
        'super_admin_status',
    ];
    public function users()
    {
        return $this->belongsTo(User::class, 'expense_by');
    }
    public function accounts()
    {
        return $this->belongsTo(BankBalance::class, 'account');
    }
}
