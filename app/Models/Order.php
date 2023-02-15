<?php

namespace App\Models;

use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Events\OrderCreatedEvent;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'sales_executive_id',
        'order_assign_sales_executive_id',
        'order_no',
        'customer_type',
        'status',
        'note',
        'date'

    ];

    // protected $dispatchesEvents = [
    //     'created' => OrderCreatedEvent::class,
    // ];

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function orderList()
    {
        return $this->hasMany(OrderList::class);
    }

    public function price()
    {
        return $this->hasMany(Price::class);
    }

    public function tempOrderList()
    {
        return $this->hasMany(TempOrderList::class);
    }

    public function sales_executive()
    {
        return $this->belongsTo(User::class, 'sales_executive_id', 'id');
    }
    public function orderAssignSalesExecutive()
    {
        return $this->belongsTo(User::class, 'order_assign_sales_executive_id', 'id');
    }

    public function customerAccountLog()
    {
        return $this->belongsTo(CustomerAccountLog::class, 'id');
    }

    public function packages()
    {
        return $this->hasMany(PackagingDeliveryCode::class, 'order_id', 'id');
    }
    public function OrderHasPrice()
    {
        return $this->hasMany(Order_has_price::class, 'order_id', 'id');
    }

    public function truckAssign()
    {
        return $this->hasMany(TruckAssign::class, 'order_id', 'id');
    }

    /* for transfering data of sales table */
    public function packagings()
    {
        return $this->hasMany(Packaging::class, 'order_id', 'id');
    }

    public function paymentHistory()
    {
        return $this->hasMany(Payment_history::class, 'order_id', 'id');
    }

    public function customerPayment()
    {
        return $this->hasOne(CustomerPayment::class, 'order_id', 'id');
    }


     public function total_product_unit($id)
    {
        $total = 0;
        $orderLists = OrderList::where('order_id', $id)->get();
        foreach ($orderLists as $orderList) {
            $total += (float) $orderList->quantity;
        }
        return $total;
    }

   
   

    /* This is for old table price sumations */
    public function OldTotalPrice($id)
    {
        $order = OldPrice::find($id);

        $product_id = [];
        $variant_id = [];
        $quantitys = [];

        foreach ($order->orderList as $olist) {
            array_push($product_id, $olist->product_id,);
            array_push($variant_id, $olist->variant_id,);
            array_push($quantitys, $olist->quantity,);
        }

        $price = OldPrice::select($order->customer_type, 'purchase')
            ->whereIn('product_id', $product_id)
            ->whereIn('variant_id', $variant_id)
            ->whereDate('date', $order->date)
            ->get();

        $sum = 0;
        for ($i = 0; $i < count($price); $i++) {
            $type_price = $order->customer_type;
            $type_wise_price = $price[$i]->$type_price;

            $main_price = (float) $type_wise_price + (float) $price[$i]->purchase;

            $sum += (float) $main_price * (float) $quantitys[$i];
        }

        return $sum;
    }

    /* 📦 pending package */
    public function pendingPackages($order_id)
    {
        $order = Order::find($order_id);
        $total_packages = $order->packages->count();

        $hasToken = [];
        foreach ($order->packages as $package) {
            if ($package->delivery_status == 0) {
                array_push($hasToken, $package->token);
            }
        }
        $totalHasToken = count($hasToken);
        $data = [
            'total_package' => $total_packages,
            'total_pending' => $totalHasToken
        ];
        return json_encode($data);
    }

    /* Total unit count of order List quantity */
    public function totalUnitCount($id)
    {
        $order = Order::find($id);
        $total_unit = 0;
        foreach ($order->orderList as $olist) {
            $total_unit += (float) $olist->quantity;
        }
        return $total_unit;
    }


    public function total_price($id)
    {
        $order = Order::find($id);
        $countPrice = 0;
        foreach ($order->orderList as $listOrder) {
            $per_price = $listOrder->perPrice($listOrder->id , $order->customer_type);
            $per_and_qty = $per_price * $listOrder->quantity;
            $countPrice += $per_and_qty;

        }
        return $countPrice;
       
    }
}
