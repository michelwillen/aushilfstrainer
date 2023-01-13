<?php

require_once('config.php');
require_once('autorisieren.php');

$userID = $_POST["userID"];
$trainerID = $_POST["trainerID"];

$sql = "DELETE FROM trainer WHERE user = ? AND ID = ?";
$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute([$userID, $trainerID]);

// falls erfolg true bzw. 1 ist
if ($erfolg) {

    echo "Inserat wurde gelöscht.";

} 