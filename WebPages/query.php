<?php
/*
* Basic php to establish connection with MySQL Server and query the database 
*/

$config_file = "config.ini";
//Parse config file for 'username' and 'password'
$cred = parse_ini_file($config_file);

$servername = "localhost:3306";
$username = ($cred['username']);
$password = ($cred['password']);
$dbname = "sheptrees";

//Establish connection with MySQL Server
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
}

//Query the database
$sql = "SELECT tree_id, scientific_name FROM tree_raw WHERE tree_id = 1;";
$result = $conn -> query($sql);

//Result is the result of the query. As long as the result contains more than 0
//rows, print the rows and their respective columns.
if ($result -> num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "TreeID: " . $row["tree_id"] . " - Species: "  . $row["scientific_name"] . "<br>"; }
  } else {
    echo "0 results";
}

//Close the connection with the MySQL Server
$conn -> close();
?>
