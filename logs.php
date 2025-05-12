<?php

require 'vendor/autoload.php'; 

use MongoDB\Client;

$uri = "mongodb+srv://a24alvsalalv:nkJAdHbuQRhz90Zc@cluster0.9pxismp.mongodb.net/";
$client = new Client($uri);

$collection = $client->logsDB->logs;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $mensaje = $_POST['mensaje'] ?? 'Sin mensaje';
    $tipo = $_POST['tipo'] ?? 'info';

    $documento = [
        'mensaje' => $mensaje,
        'tipo' => $tipo,
        'fecha' => new MongoDB\BSON\UTCDateTime()];

    $result = $collection->insertOne($documento);
    echo "Log registrado con ID: " . $result->getInsertedId();
}
?>