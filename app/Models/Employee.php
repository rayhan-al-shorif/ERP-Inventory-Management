<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'employee_id',
        'department',
        'designation',
        'salary',
        'status',
        'ranking',     
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function deduct($id,$date)
    {
        $employeeSalary = EmployeeSalary::select('deduct')
                ->where('employee_id', $id)
                ->where('date', $date)->first();
        if($employeeSalary){
            return $employeeSalary->deduct;
        }else{
            return 0;
        }
    }
    public function bonus($id,$date)
    {
        // $date = '2022-02-01';
        $employeeSalary = EmployeeSalary::select('bonus')
                ->where('employee_id', $id)
                ->where('date', $date)->first();
        if($employeeSalary){
            return $employeeSalary->bonus;
        }else{
            return 0;
        }
    }
    public function dayClosing($getDailyAmount,$id,$date)
    {
        $bonus = $this->bonus($id,$date);
        $deduct = $this->deduct($id,$date);
        if($bonus > 0){
            $getDailyAmount = $getDailyAmount + $bonus;
        }
        if ($deduct > 0) {
            $getDailyAmount = $getDailyAmount - $deduct;
        }
        return (float)$getDailyAmount;
    }
}
