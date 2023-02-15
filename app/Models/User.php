<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasFactory, HasRoles, Notifiable,HasApiTokens;

    protected $fillable = [
        'zone_id',
        'added_by',
        'name',
        'email',
        'phone',
        'otp',
        'password',
        'account_status',
        'address_line_1',
        'address_line_2',
        'area',
        'city',
        'image',
        'nid_image',
    ];

    protected $hidden = [
        'password'
    ];

    public function zone()
    {
        return $this->belongsTo(Zone::class);
    }

    public function addedBy()
    {
        return $this->belongsTo(User::class, 'added_by', 'id');
    }

    public function salers()
    {
        return $this->hasMany(User::class, 'added_by', 'id');
    }

    // get user role 
    public function getRole()
    {
        return $this->roles()->first();
    }


}
