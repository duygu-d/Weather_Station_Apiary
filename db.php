<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "weather_station";

$db = new mysqli($host, $username, $password, $database);

/* check connection */
if ($db->connect_errno) {
    printf("Connect failed: %s\n", $db->connect_error);
    exit();
}
