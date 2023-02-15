<?php

namespace App\Imports;

use App\Models\Price;
use App\Models\Product;
use App\Models\Variant;
use App\Models\ProductAndVarient;
use App\Models\Order;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;



class PriceImport implements ToCollection
{

   
     public function collection(Collection $rows)
    {
        $length = count($rows);

        for ($index = 2; $index < $length ; $index++) { 

        $countArray = 1;
        $product_id = $rows[$index][22+$countArray];
        $variant_id = $rows[$index][23+$countArray];
        // find price 
        $price = Price::where('product_id', $product_id)->where('variant_id', $variant_id)->first();
        $manual = preg_replace('/[^0-9.]+/', '', $rows[$index][5+$countArray]);
        $new = preg_replace('/[^0-9.]+/', '', $rows[$index][6+$countArray]);
        $normal = preg_replace('/[^0-9.]+/', '', $rows[$index][7+$countArray]);
        $loyal = preg_replace('/[^0-9.]+/', '', $rows[$index][8+$countArray]);
        $zoneOne = preg_replace('/[^0-9.]+/', '', $rows[$index][9+$countArray]);
        $zoneTwo = preg_replace('/[^0-9.]+/', '', $rows[$index][10+$countArray]);
        $zoneThree = preg_replace('/[^0-9.]+/', '', $rows[$index][11+$countArray]);
        $zoneFour = preg_replace('/[^0-9.]+/', '', $rows[$index][12+$countArray]);
        $zoneFive = preg_replace('/[^0-9.]+/', '', $rows[$index][13+$countArray]);
        $zoneSix = preg_replace('/[^0-9.]+/', '', $rows[$index][14+$countArray]);
        $zoneSeven = preg_replace('/[^0-9.]+/', '', $rows[$index][15+$countArray]);
        $zoneEight = preg_replace('/[^0-9.]+/', '', $rows[$index][16+$countArray]);
        $zoneNine = preg_replace('/[^0-9.]+/', '', $rows[$index][17+$countArray]);
        $zoneTen = preg_replace('/[^0-9.]+/', '', $rows[$index][18+$countArray]);
        $app = preg_replace('/[^0-9.]+/', '', $rows[$index][19+$countArray]);


                if($manual == null){
                    $manual = 0;
                } 
                if($new == null){
                    $new = 0;
                }
                if($normal == null){
                    $normal = 0;
                }
                if($loyal == null){
                    $loyal = 0;
                }
                if($zoneOne == null){
                    $zoneOne = 0;
                }
                if($zoneTwo == null){
                    $zoneTwo = 0;
                }
                if($zoneThree == null){
                    $zoneThree = 0;
                }
                if($zoneFour == null){
                    $zoneFour = 0;
                }
                if($zoneFive == null){
                    $zoneFive = 0;
                }
                if($zoneSix == null){
                    $zoneSix = 0;
                }
                if($zoneSeven == null){
                    $zoneSeven = 0;
                }
                if($zoneEight == null){
                    $zoneEight = 0;
                }
                if($zoneNine == null){
                    $zoneNine = 0;
                }
                if($zoneTen == null){
                    $zoneTen = 0;
                }
                if($app == null){
                    $app = 0;
                }

                // date prices
                $CurrentPriceByOrderBasedDate = Carbon::now();
                $AM_OR_PM = $CurrentPriceByOrderBasedDate->format('A');
                $priceDateBYorderDate = "";                
                if($AM_OR_PM == 'PM'){
                    // Next date 
                    $priceDateBYorderDate = Carbon::parse($CurrentPriceByOrderBasedDate->format('Y-m-d'))->addDays(1);
                    $priceDateBYorderDate = $priceDateBYorderDate->format('Y-m-d');
                }else{
                    $priceDateBYorderDate = $CurrentPriceByOrderBasedDate->format('Y-m-d');    // for AM 
                }

                // if Today order is not empty then set this date in price (else not)
                $todayOrder = Order::select('date')->first();

                if($todayOrder){
                    $todayOrderDate = $todayOrder->date;
                    $priceDateBYorderDate = $todayOrderDate;
                }
               
                // if price is not empty then update price
                if($price){
                    $price->manual = $manual;
                    $price->new_c = $new;
                    $price->normal = $normal;
                    $price->loyal = $loyal;
                    $price->zone_one = $zoneOne;
                    $price->zone_two = $zoneTwo;
                    $price->zone_three = $zoneThree;
                    $price->zone_four = $zoneFour;
                    $price->zone_five = $zoneFive;
                    $price->zone_six = $zoneSix;
                    $price->zone_seven = $zoneSeven;
                    $price->zone_eight = $zoneEight;
                    $price->zone_nine = $zoneNine;
                    $price->zone_ten = $zoneTen;
                    $price->app = $app;
                    $price->date = $priceDateBYorderDate;
                    $price->edit_by =  auth()->user()->id;
                    $price->save();
                }else{
                // create price
                $price = new Price;
                $price->product_id = $product_id;
                $price->variant_id = $variant_id;
                $price->manual = (float) $manual;
                $price->new_c = (float) $new;
                $price->normal = (float) $normal;
                $price->loyal = (float) $loyal;
                $price->zone_one = (float) $zoneOne;
                $price->zone_two = (float) $zoneTwo;
                $price->zone_three = (float) $zoneThree;
                $price->zone_four = (float) $zoneFour;
                $price->zone_five = (float) $zoneFive;
                $price->zone_six = (float) $zoneSix;
                $price->zone_seven = (float) $zoneSeven;
                $price->zone_eight = (float) $zoneEight;
                $price->zone_nine = (float) $zoneNine;
                $price->zone_ten = (float) $zoneTen;
                $price->app = (float) $app;
                $price->date = $priceDateBYorderDate;
                $price->edit_by =  auth()->user()->id;
                $price->save();
                }
                
        }
    }
}