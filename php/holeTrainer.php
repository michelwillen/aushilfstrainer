<?php

require("config.php");
require("autorisieren.php");

$sql = "

SELECT TRAINER.ID, TRAINER.trainername, SP.sport, TRAINER.bild, TRAINER.altersstufe, TRAINER.ort, TRAINER.qualifikation, TRAINER.zeit, TRAINER.mail
FROM trainer TRAINER

INNER JOIN sport SP
ON TRAINER.sport = SP.ID

INNER JOIN user U
ON TRAINER.user = U.ID

ORDER BY TRAINER.timestamp DESC

";

$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute();

if ($erfolg) {

    $array = $stmt->fetchAll();

    $jsonArray = json_encode($array);

    print_r($jsonArray);
}

