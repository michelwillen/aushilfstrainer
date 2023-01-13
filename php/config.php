<?php

$host = "xxxxx";
$user = "xxxxx";
$password = "xxxxx";
$dbname = "xxxxx";

$pdo = new PDO('mysql:host='. $host . '; dbname=' . $dbname . ';charset=utf8', $user, $password);
$pdo->exec("set names utf8");