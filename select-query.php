<?php

include "db.php";

$sql = "SELECT id, apiary_id, current_date_and_time, temperature, humidity FROM apiary_weather_station";
$result = $db->query($sql);

$result_array = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $result_array[] = array(
            "id" => $row["id"],
            "apiary_id" => $row["apiary_id"],
            "current_date_and_time" => $row["current_date_and_time"],
            "temperature" => $row["temperature"],
            "humidity" => $row["humidity"]
        );
    }

    echo json_encode($result_array);

  } else {
    echo "0 results";
  }
  $db->close();

  ?>
