<?php

namespace App\Imports;

use Maatwebsite\Excel\Concerns\ToCollection;
use App\Models\Price;
use App\Models\Product;
use App\Models\User;
use App\Models\Variant;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderListBackUp;
use App\Models\PVSku;
use App\Models\OldOrder;
use App\Models\Pandamart;
use App\Models\OrderList;
use App\Models\TruckTrucking;
use App\Models\Locker;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Collection;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Exception;

class PandamartOrderImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
        $length = count($rows);
        //
         for ($index = 1; $index < $length ; $index++) { 
            $pandamart_sku = $rows[$index][4];
            $order_qty = $rows[$index][11];
            $pandamart_store_id = $rows[$index][15];
            
            $customerID = Pandamart::select()
            ->where('pandamart_customer_id', $pandamart_store_id)
            ->first();
            if($customerID){
                $getCustomerID = $customerID->fashol_customer_id;
                $customerType = Customer::select('customer_type')->where('id', $getCustomerID)->first();
            }
            // search by like 
            $findSku = DB::table('p_v_skus')->where('pandamart_sku', 'like', '%'.$pandamart_sku.'%')->first();

            if($findSku){
                $product_id = $findSku->product_id;
                $variant_id = $findSku->variant_id;
                $qty = (float)$order_qty * (float)$findSku->pandamart_unit_count;
                $orderData = [];

                $orderData['customer_id'] = $getCustomerID;
                
                $orderData['status'] = 'pending';
                $orderData['customer_type'] = 'zone_seven';
                $orderData['order_date'] = null;
                $orderData['order_assign_sales_executive_id'] = auth()->user()->id;
                $orderList= [
                        "product_id" => $product_id,
                        "variant_id" => $variant_id,
                        "qty" => $qty
                ];
                // if order
                $findOrderByCustomerID = Order::select()->where('customer_id', $getCustomerID)
                ->count();
                $order = Order::select()->where('customer_id', $getCustomerID)
                ->first();
                if($findOrderByCustomerID > 0){
                    $this->alreadyHasOrder($order->id,$orderList);
                }else{
                    $this->newOrderCreate($orderData,$orderList);
                }
            }
            else{
                dd($pandamart_sku);
            }

         }
    }

    
    public static $bn = array(
        "১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০"
    );
    public static $en = array(
        "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"
    );

    public static function bn2en($number)
    {
        return str_replace(self::$bn, self::$en, $number);
    }


    public  function newOrderCreate($orderData,$orderlist)
    {
        // count of order
        $count = Order::count();
        $CurrentPriceByOrderBasedDate = Carbon::now();
        $AM_OR_PM = $CurrentPriceByOrderBasedDate->format('A');
        $orderNoBYDateBased = "";
        if($AM_OR_PM == 'PM'){
                // Next date 
            $orderNoBYDateBased = $CurrentPriceByOrderBasedDate->addDay(1)->format('dmY');
        }else{
            $orderNoBYDateBased = $CurrentPriceByOrderBasedDate->format('dmY');    // for AM 
        }                

        if($count){
            checkAgain:
            $count = $count + 1;
            $customDate = $orderNoBYDateBased . $count;
        }else{
            $count = 1;
            $customDate = $orderNoBYDateBased . $count;
        }
        $orderNo = 'F_OR' . $customDate;

        $OrderNo = Order::select('id')
            ->where('order_no', $orderNo)
            ->first();
        $oldOrderNo = OldOrder::select('id')
            ->where('order_no', $orderNo)
            ->first();
        if ($OrderNo || $oldOrderNo) {
            goto checkAgain;
        }else {
            $this->data['order_no'] = $orderNo;
        }


        $assignSalerID = $orderData['order_assign_sales_executive_id'];
                // date validation
        $CurrentOrderDate = Carbon::now();
        $AM_OR_PM = $CurrentOrderDate->format('A');
        $orderDate = "";                
        if($AM_OR_PM == 'PM'){
            // Next date 
            $orderDate = Carbon::parse($CurrentOrderDate->format('Y-m-d'))->addDays(1);
            $orderDate = $orderDate->format('Y-m-d');
        }else{
            $orderDate = $CurrentOrderDate->format('Y-m-d');    // for AM 
        }
        $this->data['order_assign_sales_executive_id']    = auth()->user()->id;
        $this->data['sales_executive_id']    = auth()->user()->id;
        $this->data['customer_id']           = $orderData['customer_id'];
        $this->data['customer_type']         = $orderData['customer_type'];
        $this->data['status']                = 'pending';
        $this->data['note']                  = null;
        $this->data['date']                  = $orderDate;

        $order = Order::create($this->data);

         OrderList::create([
            'order_id' => $order->id,
            'product_id' => $orderlist['product_id'],
            'variant_id' => $orderlist['variant_id'],
            'quantity' => $orderlist['qty']
        ]);
    }


    public function alreadyHasOrder($orderId,$orderlist){
        OrderList::create([
            'order_id' => $orderId,
            'product_id' => $orderlist['product_id'],
            'variant_id' => $orderlist['variant_id'],
            'quantity' => $orderlist['qty']
        ]);
    }


     public function store($data)
    { 




        // role
        $role = auth()->user()->roles[0]->name;
        if($role == 'sales_executive'){
            $locker = Locker::select()->first();
            if($locker->order_locker == 'lock'){
                session()->flash('danger', 'Order is locked. Please contact HQ.');
                return $this->respondWithSuccess('এখন অর্ডার বন্ধ আছে ,দয়াকরে HQ এর সাথে যোগাযোগ করুন.', '/order/create');
            }
        }


        



        
        
        // count of order
        $count = Order::count();
        $CurrentPriceByOrderBasedDate = Carbon::now();
        $AM_OR_PM = $CurrentPriceByOrderBasedDate->format('A');
        $orderNoBYDateBased = "";
        if($AM_OR_PM == 'PM'){
                // Next date 
            $orderNoBYDateBased = $CurrentPriceByOrderBasedDate->addDay(1)->format('dmY');
        }else{
            $orderNoBYDateBased = $CurrentPriceByOrderBasedDate->format('dmY');    // for AM 
        }                

        if($count){
            checkAgain:
            $count = $count + 1;
            $customDate = $orderNoBYDateBased . $count;
        }else{
            $count = 1;
            $customDate = $orderNoBYDateBased . $count;
        }
        $orderNo = 'F_OR' . $customDate;

        $OrderNo = Order::select('id')
            ->where('order_no', $orderNo)
            ->first();
        $oldOrderNo = OldOrder::select('id')
            ->where('order_no', $orderNo)
            ->first();
        if ($OrderNo || $oldOrderNo) {
            goto checkAgain;
        }else {
            $this->data['order_no'] = $orderNo;
        }
       
        $orderIfExist = Order::select()->where('customer_id', $data['customer_id'])->count();

        
        if ($orderIfExist == 0) {
            try {
                $assignSalerID = $data['order_assign_sales_executive_id'];
                // date validation
                $CurrentOrderDate = Carbon::now();
                $AM_OR_PM = $CurrentOrderDate->format('A');
                $orderDate = "";                
                if($AM_OR_PM == 'PM'){
                    // Next date 
                    $orderDate = Carbon::parse($CurrentOrderDate->format('Y-m-d'))->addDays(1);
                    $orderDate = $orderDate->format('Y-m-d');
                }else{
                    $orderDate = $CurrentOrderDate->format('Y-m-d');    // for AM 
                }

                if($assignSalerID){
                    $this->data['order_assign_sales_executive_id']    = $assignSalerID;
                }else{
                    $this->data['order_assign_sales_executive_id']    = auth()->user()->id;
                }

                $this->data['sales_executive_id']    = auth()->user()->id;
                $this->data['customer_id']           = $data['customer_id'];
                $this->data['customer_type']         = $data['customer_type'];
                $this->data['status']                = 'pending';
                $this->data['note']                  = null;
                $this->data['date']                  = $orderDate;

                $getOrders = Order::select()->first();
                $truck_tracking = [];
                if ($getOrders == null) {
                    $numberCharacters = '123456789';
                    $charactersLength = strlen($numberCharacters);
                    $randomString = '';
                    for ($i = 0; $i < 5; $i++) {
                        $randomString .= $numberCharacters[rand(0, $charactersLength - 1)];
                    }
                    $truck_tracking['truck_tracking']  = 'F_TR' . $randomString;
                    TruckTrucking::create($truck_tracking);
                }
                $order = Order::create($this->data);
                // foreach ($data['orders'] as $listedOrder) {
                //     $orderQty = $this->bn2en($listedOrder['qty']);
                //     if($orderQty){
                //         $list = [];
                //         $list['order_id']     = $order->id;
                //         $list['product_id']   = $listedOrder['product_id'];
                //         $list['variant_id']   = $listedOrder['variant_id'];
                //         $list['quantity']     = $orderQty;
                //         $list['status']       = 1;
                //         OrderList::create($list);
                //         OrderListBackUp::create($list);
                //     }
                // }
            } catch (Exception $e) {
                return $this->respondWithError('Database errors', $e->getMessage(), 200);
            }
        } else {
            /* Marging code */
            dd($orderIfExist,$data['orders']);

            if ($orderIfExist->status == "pending") {
                foreach ($data['orders'] as $listedOrder) {
                    $orderQty = $this->bn2en($listedOrder['qty']);
                    if($orderQty){
                    $list = [];
                    $list['order_id']     = $orderIfExist->id;
                    $list['product_id']   = $listedOrder['product_id'];
                    $list['variant_id']   = $listedOrder['variant_id'];
                    $list['quantity']     = $orderQty;
                    $list['status']       = 1;
                    OrderList::updateOrCreate([
                        'product_id' => $listedOrder['product_id'],
                        'variant_id' => $listedOrder['variant_id']
                    ], $list);
                    OrderListBackUp::updateOrCreate([
                        'product_id' => $listedOrder['product_id'],
                        'variant_id' => $listedOrder['variant_id']
                    ], $list);
                    }
                }
            }
            // return $this->respondWithSuccess('Your successfully create an order','/sales');
        }
    
    }


}
