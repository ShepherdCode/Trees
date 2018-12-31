<?php
$servername = "127.0.0.1";
$username = "root";
$password = "shepherd";
$dbname = "sheptrees";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
}

$sql = "SELECT TreeID, ScientificName FROM trees WHERE TreeID = 1;";
$result = $conn -> query($sql);

if ($result -> num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "TreeID: " . $row["TreeID"] . " - Species: "  . $row["ScientificName"] . "<br>"; }
  } else {
    echo "0 results";
}

$conn -> close();
?>
