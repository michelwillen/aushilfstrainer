<?php

$host = "localhost";
$user = "734301_2_1";
$password = "d1FwnjcyWRzv";
$dbname = "734301_2_1";

$conn = mysqli_connect($host, $user, $password, $dbname);

if (!$conn) {
    echo "Connection failed!";
    exit();
}