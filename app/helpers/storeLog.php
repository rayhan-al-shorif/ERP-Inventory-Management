<?php

function storeLog($path, $data) {
    $logFile = fopen(base_path('storage/logs/'.$path.'.json'), 'a');
    fwrite($logFile, $data);
    fclose($logFile);
}