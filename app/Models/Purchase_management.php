<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase_management extends Model
{
    use HasFactory;
    protected $fillable = [
        'purchase_name',
        'issue_by',
        'payment_status',
        'account',
        'amount',
        'accountadmin_status',
        'accountsuper_admin_status',
    ];
    public function users()
    {
        return $this->belongsTo(User::class, 'issue_by');
    }
    public function accounts()
    {
        return $this->belongsTo(BankBalance::class, 'account');
    }
}