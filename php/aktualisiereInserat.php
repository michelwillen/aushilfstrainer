<?php

require_once('config.php');
require_once('autorisieren.php');

$userID = $_POST["userID"];

$trainername = $_POST["trainername"];
$sport = $_POST["sport"];
$bild = $_POST["bild"];
$altersstufe = $_POST["altersstufe"];
$ort = $_POST["ort"];
$qualifikation = $_POST["qualifikation"];
$zeit = $_POST["zeit"];
$mail = $_POST["mail"];



$trainerID = $_POST["trainerID"];


$sql = "UPDATE trainer SET trainername=?, bild=?, sport=?, ort=?, altersstufe=?, qualifikation=?, zeit=?, mail=? WHERE user=?";
$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute([$trainername, $bild, $sport, $ort, $altersstufe, $qualifikation, $zeit, $mail, $userID]);

// falls erfolg true bzw. 1 ist
if ($erfolg) {

    insertDetails($trainerID);

} else {

    print_r($erfolg); 

};

function insertDetails($trainerID){

require('config.php');

    print_r("Dein Inserat wurde aktualisiert.");
}