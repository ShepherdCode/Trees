<?php
$search_value=$_POST["search"];
$servername = "127.0.0.1";
$username = "root";
$password = "shepherd";
$dbname = "sheptrees";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
} else {

$sql = "SELECT TreeID, ScientificName, CommonName FROM trees WHERE TreeID = $search_value;";
$result = $conn -> query($sql);

if ($result -> num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "TreeID: " . $row["TreeID"] . "<br>" .
        "Species: "  . $row["ScientificName"] . "<br>" .
        "Common Name: " . $row["CommonName"] . "<br>"; }
  } else {
    echo "0 results";
}
}
$conn -> close();
?>
