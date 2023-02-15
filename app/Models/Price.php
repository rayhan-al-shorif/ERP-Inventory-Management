<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Price extends Model
{
 use HasFactory;
 protected $fillable = [
  'product_id',
  'variant_id',
  'purchase',
  'manual',
  'new_c',
  'normal',
  'loyal',
  'zone_one',
  'zone_two',
  'zone_three',
  'zone_four',
  'zone_five',
  'zone_six',
  'zone_seven',
  'zone_eight',
  'zone_nine',
  'zone_ten',
  'date'
 ];

 public function product()
 {
  return $this->belongsTo(Product::class);
 }
 public function variant()
 {
  return $this->belongsTo(Variant::class);
 }
 

 public function variants()
 {
  return $this->belongsToMany(Variant::class, 'product_id', 'variant_id');
 }
 public function getProductTags($id)
 {
   $getTag = Product::select()->where("id",$id)->with("tag")->first();
   $tag = $getTag->tag;

   if($tag){
    return $tag->tags;
   }else{
    return ".";
   }
 }


 public function orderList()
 {
  return $this->belongsTo(OrderList::class);
 }

 public function pvSku($product_id, $variant_id)
 {
  $porductAndVarient = PVSku::select()
   ->where('product_id', $product_id)
   ->where('variant_id', $variant_id)
   ->first();
  if ($porductAndVarient) {
   return $porductAndVarient->pv_sku;
  } else {
   return null;
  }
 }
 public function pvSkuProductStatus($product_id, $variant_id)
 {
  $porductAndVarient = PVSku::select()
   ->where('product_id', $product_id)
   ->where('variant_id', $variant_id)
   ->first();
  if ($porductAndVarient) {
    if($porductAndVarient->status == 1){
     return "Active";
    }else{
      return "Inactive";
      }
  } else {
   return null;
  }
 }
 public function editBy($user_id)
 {
  $user = User::find($user_id);
  if ($user_id == 1) {
   return 'No Edit';
  } else if ($user) {
   return $user->name;
  }
 }
}