<?php

$tree_id = $_GET['id'];

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
$sql = "SELECT photo FROM photos WHERE tree_id = $tree_id;";
$result = $conn -> query($sql);

$row = $result->fetch_assoc();
echo $row['photo_id']

 ?>
