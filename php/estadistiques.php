<?php
require 'vendor/autoload.php';


$client = new MongoDB\Client("mongodb+srv://a24alvsalalv:nkJAdHbuQRhz90Zc@cluster0.9pxismp.mongodb.net/");

$collection = $client->RegistreLogs->ProjecteIncidencia;

$totalAccessos = $collection->countDocuments();

$accessosPerUsuari = $collection->aggregate([
    ['$group' => ['_id' => '$usuari', 'total' => ['$sum' => 1]]],
    ['$sort' => ['total' => -1]]
]);

$accessosPerUrl = $collection->aggregate([
    ['$group' => ['_id' => '$url', 'total' => ['$sum' => 1]]],
    ['$sort' => ['total' => -1]],
    ['$limit' => 10] 
]);

$accessosPerDia = $collection->aggregate([
    [
        '$group' => [
            '_id' => ['$dateToString' => ['format' => "%Y-%m-%d", 'date' => '$timestamp']],
            'total' => ['$sum' => 1]
        ]
    ],
    ['$sort' => ['_id' => -1]]
]);
?>

<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <title>Panell d'Administració - Estadístiques</title>
    <style>
        body { font-family: sans-serif; margin: 20px; }
        h1, h2 { color: #333; }
        table { border-collapse: collapse; width: 100%; margin-bottom: 30px; }
        th, td { border: 1px solid #ccc; padding: 8px 12px; text-align: left; }
        th { background-color: #f0f0f0; }
    </style>
</head>
<body>
    <h1>Panell d'Administració</h1>

    <h2>Total d'accessos: <?= $totalAccessos ?></h2>

    <h2>Accessos per usuari</h2>
    <table>
        <tr><th>Usuari</th><th>Accessos</th></tr>
        <?php foreach ($accessosPerUsuari as $usuari): ?>
            <tr>
                <td><?= htmlspecialchars($usuari['_id']) ?></td>
                <td><?= $usuari['total'] ?></td>
            </tr>
        <?php endforeach; ?>
    </table>

    <h2>Top 10 URLs més visitades</h2>
    <table>
        <tr><th>URL</th><th>Accessos</th></tr>
        <?php foreach ($accessosPerUrl as $url): ?>
            <tr>
                <td><?= htmlspecialchars($url['_id']) ?></td>
                <td><?= $url['total'] ?></td>
            </tr>
        <?php endforeach; ?>
    </table>

    <h2>Accessos per dia</h2>
    <table>
        <tr><th>Data</th><th>Accessos</th></tr>
        <?php foreach ($accessosPerDia as $dia): ?>
            <tr>
                <td><?= $dia['_id'] ?></td>
                <td><?= $dia['total'] ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
