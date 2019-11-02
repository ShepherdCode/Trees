<?php

$tree_id = $_GET['id'];

$servername = '';
$dbname = '';
$username = '';
$password = '';

//Establish connection with MySQL Server
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
}

//Query the database
$sql = "SELECT photo FROM photos WHERE tree_id = $tree_id;";
$result = $conn -> query($sql);

if ($result -> num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo $row['photo'];
  }} else {
    echo "<font face=\"serif\" color=#036 size=25px> NO RESULTS </font>";
}


 ?>
