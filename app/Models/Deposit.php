<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Deposit extends Model
{
    use HasFactory;

    protected $fillable = [
        'pay_by_bank',
        'pay_by_hand',
        'deposit_by',
        'name',
        'token_number',
        'amount',
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
        return $this->belongsTo(User::class, 'deposit_by', 'id');
    }
}
