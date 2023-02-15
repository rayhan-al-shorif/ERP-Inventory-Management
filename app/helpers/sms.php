<?php

use Illuminate\Support\Facades\Http;


// ZOHO API
function sms($phone , $message) {
  Http::get('https://msg.elitbuzz-bd.com/smsapi', [
        'type'      => 'text',
        'api_key'   => 'C2008333629633328d5431.53340115',
        'senderid'  => "8809601000638",
        'contacts'  => $phone,
        'msg'       => $message,
        'label'     => 'transactional',
  ]);
}


function smsRobi($phone , $message) {
  Http::get('https://api.mobireach.com.bd/SendTextMessage', [
                        'Username' => env('SMS_USER_NAME'),
                        'Password' => env('SMS_PASSWORD'),
                        'From'     => env('SMS_FROM'),
                        'To'       => $phone,
                        'Message'  => $message
      ]);
}