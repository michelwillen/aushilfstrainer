<?php

$host = "xxxxx";
$user = "xxxxx";
$password = "xxxxx";
$dbname = "xxxxx";

$conn = mysqli_connect($host, $user, $password, $dbname);

if (!$conn) {
    echo "Connection failed!";
    exit();
}