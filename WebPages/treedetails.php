<?php
$config_file = "config.ini";
$cred = parse_ini_file($config_file);

$this_tree = $_GET["tree_id"];
$servername = "localhost:3306";
$username = $cred['username'];
$password = $cred['password'];
$dbname = "sheptrees";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
} else {

  $query = "SELECT tree_id, scientific_name, common_name, ROUND(height,2) AS height, exposure_to_sunlight AS exposure
            FROM tree_raw
            WHERE tree_id = $this_tree;";
  $result = $conn -> query($query);

  if ($result -> num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      echo "<img class=\"pad\" width=25% src=\"../pictures/$this_tree"."_P.jpg\"> <br>";
      echo "Tree ID: " . $row["tree_id"] . "<br>" .
          "Scientific Name: <i>"  . $row["scientific_name"] . "</i><br>" .
          "Common Name: " . $row["common_name"] . "<br>" .
          "Height: " . $row["height"] . " meters" . "<br>" .
          "Exposure to Sunlight: " . $row["exposure"] . "<br>";}
    } else {
      echo "0 results";
  }
  }
  $conn -> close();
 ?>
