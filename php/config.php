<?php

$host = "localhost";
$user = "734301_2_1";
$password = "d1FwnjcyWRzv";
$dbname = "734301_2_1";

$pdo = new PDO('mysql:host='. $host . '; dbname=' . $dbname . ';charset=utf8', $user, $password);
$pdo->exec("set names utf8");