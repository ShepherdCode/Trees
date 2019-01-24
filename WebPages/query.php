<?php

$config_file = "config.ini";
$cred = parse_ini_file($config_file);

$servername = "localhost:3306";
$username = ($cred['username']);
$password = ($cred['password']);
$dbname = "sheptrees";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
}

$sql = "SELECT tree_id, scientific_name FROM tree_raw WHERE tree_id = 1;";
$result = $conn -> query($sql);

if ($result -> num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "TreeID: " . $row["tree_id"] . " - Species: "  . $row["scientific_name"] . "<br>"; }
  } else {
    echo "0 results";
}

$conn -> close();
?>
