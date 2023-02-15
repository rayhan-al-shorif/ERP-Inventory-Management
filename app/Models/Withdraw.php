<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Withdraw extends Model
{
    use HasFactory;

    protected $fillable = [
        'pay_by_bank',
        'pay_by_hand',
        'withdraw_by',
        'name',
        'amount',
        'admin_status',
        'super_admin_status'
    ];

    public function bankBalance()
    {
        return $this->belongsTo(BankBalance::class, 'pay_by_bank', 'id');
    }
    public function handBalance()
    {
        return $this->belongsTo(HandBalance::class, 'pay_by_hand', 'id');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'withdraw_by', 'id');
    }
}
