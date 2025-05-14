<?php
require 'vendor/autoload.php';

$client = new MongoDB\Client("mongodb+srv://a24alvsalalv:nkJAdHbuQRhz90Zc@cluster0.9pxismp.mongodb.net/");
$collection = $client->RegistreLogs->ProjecteIncidencia;

$perPagina = 15;
$pagina = isset($_GET['pagina']) ? max(1, intval($_GET['pagina'])) : 1;
$skip = ($pagina - 1) * $perPagina;

$logs = $collection->find([], [
    'sort' => ['timestamp' => -1],
    'limit' => $perPagina,
    'skip' => $skip
]);

$totalLogs = $collection->countDocuments();
$totalPagines = ceil($totalLogs / $perPagina);
?>

<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <title>Consulta de Logs</title>
    <link rel="stylesheet" href="verlogs.css">
</head>
<body>
    <h1>Logs d'Accés (pàgina <?= $pagina ?> de <?= $totalPagines ?>)</h1>
    <table>
        <tr>
            <th>Data i Hora</th>
            <th>Usuari</th>
            <th>URL</th>
            <th>Navegador</th>
        </tr>
        <?php foreach ($logs as $log): ?>
            <?php
                if (empty($log['timestamp']) && empty($log['usuari']) && empty($log['url'])) {
                    continue;
                }
            ?>
            <tr>
                <td>
                    <?php
                        if (isset($log['timestamp']) && $log['timestamp'] instanceof MongoDB\BSON\UTCDateTime) {
                            echo $log['timestamp']->toDateTime()->format('Y-m-d H:i:s');
                        } else {
                            echo '—';
                        }
                    ?>
                </td>
                <td><?= htmlspecialchars($log['usuari'] ?? '—') ?></td>
                <td><?= htmlspecialchars($log['url'] ?? '—') ?></td>
                <td><?= htmlspecialchars($log['navegador'] ?? '—') ?></td>
            </tr>
        <?php endforeach; ?>
    </table>

    <div class="mt">
        <?php if ($pagina > 1): ?>
            <a href="?pagina=<?= $pagina - 1 ?>" class="mr">&laquo; Anterior</a>
        <?php endif; ?>

        <?php if ($pagina < $totalPagines): ?>
            <a href="?pagina=<?= $pagina + 1 ?>" class="ml" >Següent &raquo;</a>
        <?php endif; ?>
    </div>
</body>
</html>