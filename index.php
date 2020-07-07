<?php
include "db.php";


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $postdata = array(
        "apiary_id" => $_POST["apiary_id"],
        "current_date_and_time" => time(),
        "temperature" => $_POST["temperature"],
        "humidity" => $_POST["humidity"]

    );
    
    $sql = "INSERT INTO apiary_weather_station (apiary_id, current_date_and_time, temperature, humidity)
    VALUES ('{$postdata["apiary_id"]}', '{$postdata["current_date_and_time"]}', '{$postdata["temperature"]}', '{$postdata["humidity"]}')";

if ($db->query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $db->error;
  }
  
  $db->close();
}