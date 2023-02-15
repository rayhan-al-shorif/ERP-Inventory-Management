<?php
use Illuminate\Support\Facades\DB;
use App\Models\CashCollectionsLB;
require_once('sms.php');
require_once('storeLog.php');
require_once('push_notification.php');

function cclb($rows,$id)
{
    $length = count($rows);
    for ($index = 1; $index < $length; $index++) {
            $date = getConvertDate($rows[$index][0]);
            $total = preg_replace('/[^0-9.-]+/', '', $rows[$index][1]);
            $damage = preg_replace('/[^0-9.-]+/', '', $rows[$index][2]);
            $paid = preg_replace('/[^0-9.-]+/', '', $rows[$index][3]);

            if(!$damage || strpos($damage, '-')){
                $damage = 0;
            }

            if(!$paid){
                $paid = 0;
            }

            if(!$total){
                $total = 0;
            }

            $due = 0;
            if($damage >= 0 && $paid >= 0 && $total >= 0){
                $due = ((float) $total - (float) $damage) - ((float) $paid);
                 $data = CashCollectionsLB::updateOrCreate(
                     [
                        'sales_ex_id' => $id,
                        'date' => $date,
                     ],[
                    'total_sale' => $total,
                    'paid' => $paid,
                    'due' => $due,
                    'damage' => $damage,
                    'date' => $date,
                    'sales_ex_id' => $id
                ]);
            }
           
        }
}

function getConvertDate($date) {
   $UNIX_DATE = ($date - 25569) * 86400;
   $EXCEL_DATE = 25569 + ($UNIX_DATE / 86400);
   $UNIX_DATE = ($EXCEL_DATE - 25569) * 86400;
   return date("Y-m-d", $UNIX_DATE);
}

    