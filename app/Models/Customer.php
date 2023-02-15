<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Retailer\DeliveryAddress;

class Customer extends Authenticatable
{
    use HasFactory , Notifiable, HasApiTokens;

    private $id, $orderID, $variantId;

    protected $fillable = [
        'unique_id',
        'sales_executive_id',
        'zone_id',
        'customer_image',
        'name',
        'nid_number',
        'dob',
        'phone',
        'address_line_1',
        'address_line_2',
        'store_name',
        'store_address',
        'store_image',
        'nid_front',
        'nid_back',
        'account_status',
        'account_type',
    ];
    
    public function deliverAddresses()
    {
        return $this->hasMany(DeliveryAddress::class,'customer_id','id');
    }

    public function zone()
    {
        return $this->belongsTo(Zone::class);
    }
    
    public function oldOrder()
    {
        return $this->belongsTo(OldOrder::class);
    }

    public function oldOrders()
    {
        return $this->hasMany(OldOrder::class);
    }

    public function customerAccountLog()
    {
        return $this->belongsTo(CustomerAccountLog::class, 'order_id');
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }

    public function orderLists()
    {
        return $this->hasMany(OrderList::class);
    }

    public function price()
    {
        return $this->hasMany(Price::class, 'product_id');
    }

    public function payments()
    {
        return $this->hasMany(CustomerPayment::class, 'customer_id', 'id');
    }
    public function oldPayments()
    {
        return $this->hasMany(OldCustomerPayment::class, 'customer_id', 'id');
    }

    private $total_due = 0;
    public function totalDue($id)
    {
        $customer = Customer::find($id);
        $customer->payments->each(function ($pay) {
            $this->total_due += $pay->total_due;
        });
        $customer->oldPayments->each(function ($pay) {
            $this->total_due += $pay->total_due;
        });
        return $this->total_due;
    }
    private $total_previousDue_due = 0;
    public function previousDue($id)
    {
        $customer = Customer::find($id);
        $customer->oldPayments->each(function ($pay) {
            $this->total_previousDue_due += $pay->total_due;
        });
        return $this->total_previousDue_due;
    }
    private $totalBill = 0;
    public function totalBill($id)
    {
        $customer = Customer::find($id);
        $customer->payments->each(function ($pay) {
            $this->totalBill += $pay->total_bill;
        });
        $customer->oldPayments->each(function ($pay) {
            $this->totalBill += $pay->total_bill;
        });
        return $this->totalBill;
    }

    private $total_payment = 0;
    public function totalPayment($id)
    {
        $customer = Customer::find($id);
        $customer->payments->each(function ($pay) {
            $this->total_payment += $pay->payment;
        });
        $customer->oldPayments->each(function ($pay) {
            $this->total_payment += $pay->payment;
        });
        return $this->total_payment;
    }

    public function total_payment($id) {
        $findOldCustomerPayments = OldCustomerPayment::where('customer_id', $id)->get();
        $findCustomerPayment = CustomerPayment::where('customer_id', $id)->get();

        if ($findOldCustomerPayments) {
            $findOldCustomerPayments->each(function ($pay) {
                $this->total_payment += $pay->payment;
            });
        }    
        if ($findCustomerPayment) {
            $findCustomerPayment->each(function ($pay) {
                $this->total_payment += $pay->payment;
            });
        }
        
        return $this->total_payment;
    }
}
