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


class PriceImport implements ToCollection
{

   
     public function collection(Collection $rows)
    {
        $length = count($rows);
        for ($index = 2; $index < $length ; $index++) { 
        $product_id = $rows[$index][22];
        $variant_id = $rows[$index][23];
        $price = Price::where('product_id',$product_id)
            ->where('variant_id',$variant_id)->first();
                $manual = $rows[$index][4];
                $new = $rows[$index][5];
                $normal = $rows[$index][6];
                $loyal = $rows[$index][7];
                $zoneOne = $rows[$index][8];
                $zoneTwo = $rows[$index][9];
                $zoneThree = $rows[$index][10];
                $zoneFour = $rows[$index][11];
                $zoneFive = $rows[$index][12];
                $zoneSix = $rows[$index][13];
                $zoneSeven = $rows[$index][14];
                $zoneEight = $rows[$index][15];
                $zoneNine = $rows[$index][16];
                $zoneTen = $rows[$index][17];
                $app = $rows[$index][18];
                
                
                $manual = preg_replace('/[^0-9.-]+/', '', $manual);
                $new = preg_replace('/[^0-9.-]+/', '', $new);
                $normal = preg_replace('/[^0-9.-]+/', '', $normal);
                $loyal = preg_replace('/[^0-9.-]+/', '', $loyal);
                $zoneOne = preg_replace('/[^0-9.-]+/', '', $zoneOne);
                $zoneTwo = preg_replace('/[^0-9.-]+/', '', $zoneTwo);
                $zoneThree = preg_replace('/[^0-9.-]+/', '', $zoneThree);
                $zoneFour = preg_replace('/[^0-9.-]+/', '', $zoneFour);
                $zoneFive = preg_replace('/[^0-9.-]+/', '', $zoneFive);
                $zoneSix = preg_replace('/[^0-9.-]+/', '', $zoneSix);
                $zoneSeven = preg_replace('/[^0-9.-]+/', '', $zoneSeven);
                $zoneEight = preg_replace('/[^0-9.-]+/', '', $zoneEight);
                $zoneNine = preg_replace('/[^0-9.-]+/', '', $zoneNine);
                $zoneTen = preg_replace('/[^0-9.-]+/', '', $zoneTen);
                $app = preg_replace('/[^0-9.-]+/', '', $app);


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
                
                if($price){
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
                $price->save();    
            }
            else {
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
                $price->save();
            }
        }
    }

      
}