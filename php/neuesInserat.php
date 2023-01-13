<?php

require('config.php');
require('autorisieren.php');


$user = $_POST["user"];

$trainername = $_POST["trainername"];
$sport = $_POST["sport"];
$bild = $_POST["bild"];
$altersstufe = $_POST["altersstufe"];
$ort = $_POST["ort"];
$qualifikation = $_POST["qualifikation"];
$zeit = $_POST["zeit"];
$mail = $_POST["mail"];


$sql = "INSERT INTO trainer (trainername, bild, sport, ort, altersstufe, user, qualifikation, zeit, mail) VALUES (:Trainername, :Bild, :Sport, :Ort, :Altersstufe, :User, :Qualifikation, :Zeit, :Mail)";

$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute(array('Trainername' => $trainername, 'Bild' => $bild, 'Sport' => $sport, 'Ort' => $ort, 'Altersstufe' => $altersstufe, 'User' => $user, 'Qualifikation' => $qualifikation, 'Zeit' => $zeit, 'Mail' => $mail));

if ($erfolg) {

    $letzteID = $pdo->lastInsertId();

    insertDetails($letzteID);

} else {

    print_r($erfolg);
};


function insertDetails($letzteID)
{

    require('config.php');

        print_r("Dein Inserat wurde erstellt.");
    }
