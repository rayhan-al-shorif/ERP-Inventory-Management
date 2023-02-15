<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\Models\Product;
use App\Models\Variant;
use App\Models\Requirement;
use App\Models\TotalRequirement;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Carbon;
use App\Models\ProductAndVarient;


class PurchaseImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
        $length = count($rows);
        for ($index = 2; $index < $length; $index++) { 
        $product = Product::select('id','name')
                ->where('name', $rows[$index][1])
                ->with('variants')
                ->first();
                
        foreach ($product->variants as $variant){
            if($variant->name == $rows[$index][2]){
            $totalRequirement = TotalRequirement::select()
                    ->where('product_id',$product->id)
                    ->where('variant_id',$variant->id)
                    ->first();
            }
        }       
                
                
        $temSupQty = $rows[$index][7];            
        $supQty = preg_replace('/[^0-9.]+/', '', $temSupQty); 
        $temtotalPrice = $rows[$index][8];            
        $totalPrice = preg_replace('/[^0-9.]+/', '', $temtotalPrice);
        if($totalRequirement){
            $totalRequirement->supplied_qty = (float)$supQty;    
            $totalRequirement->total_price = (float)$totalPrice;
            $totalRequirement->added_by = Auth()->user()->id; 
            $totalRequirement->save();
        } 
        }

    }


    
}
