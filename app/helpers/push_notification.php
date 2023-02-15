<?php

function pushNotification($fcmTokens){
 $serverKey = 'AAAAf3LoMUU:APA91bFV8EZoqRpOGyazitJ3O4RSpi4okhw34ourpPtsHsnYgB-3e90ctg15bPC6-gBPBWX3AYOdCfY3NFfdWBlXi3j5kI8BGl5-bAtl205zxFBFnECbAeEycItVcq-QhBRiAXDmxmrh';

 $data = [
     "registration_ids" => $fcmTokens,
     "notification" => [
         "title" => "Notification for ". auth()->user()->name,
         "body" => [
             "user_id" => auth()->user()->id
         ],
     ]
 ];

 $encodedData = json_encode($data);
 
 $headers = [
     'Authorization:key=' . $serverKey,
     'Content-Type: application/json',
 ];
 
 $ch = curl_init();
 
 curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
 curl_setopt($ch, CURLOPT_POST, true);
 curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
 curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
 curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
 curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
 // Disabling SSL Certificate support temporarly
 curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
 curl_setopt($ch, CURLOPT_POSTFIELDS, $encodedData);
 // Execute post
 $result = curl_exec($ch);
 if ($result === FALSE) {
     die('Curl failed: ' . curl_error($ch));
 }
 // Close connection
 curl_close($ch);
 // FCM response
 return $result;
}

