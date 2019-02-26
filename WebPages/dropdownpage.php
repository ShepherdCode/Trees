<form action="" method="post">
<select name="genuslist">
  <?php

  //Read config file to retreive 'username' and 'password'
  $config_file = "config.ini";
  $cred = parse_ini_file($config_file);

  //Establish connection with MySQL Server
  $servername = "localhost:3306";
  $username = $cred['username'];
  $password = $cred['password'];
  $dbname = "sheptrees";
  $conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn -> connect_error) {
    die ("Connection failed: " . $conn -> connect_error);
  } else {

  //Query server and store results in $result
  $query = "SELECT genus_name FROM Genus;";
  $result = $conn -> query($query);

  //As long as $result produces rows, get each Genus name from Genus table
  //Store each name as an option in drop down form
  if ($result -> num_rows > 0) {
      ?> <option value="choose"> CHOOSE GENUS </option> <?php
    while($row = $result->fetch_assoc()) {
  ?>
      <option value="<?php echo $row['genus_name']; ?>"> <?php echo $row['genus_name']; ?></option>;
  <?php
}} else {
      echo "0 results";
  }}
  ?>
</select>
  <input type="submit" name="select">
</form>
<?php
//Submit the user selected Genus name
$selected=$_POST["genuslist"];

//Query the database again to get genus and species name as well as tree id
$query = "SELECT s.species_name, g.genus_name, t.tree_id
          FROM Species s, Genus g, Tree t
            WHERE g.genus_id = s.genus_id
            AND s.species_id = t.species_id
            AND g.genus_name = '$selected'
            ORDER BY s.species_name ASC;";
$result = $conn -> query($query);

//Print a table that displays the results of the latter query
if ($result->num_rows > 0) {
    echo "<table><tr>
          <th>Genus</th>
          <th>Species</th>
          <th>TreeID</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["genus_name"]."</td>
              <td>".$row["species_name"]."
              <td><a href=\"treedetails.php?tree_id=".$row["tree_id"]."\">".$row["tree_id"]."</a></td></tr>";
    } echo "</table>";
} else {
    echo "0 results";
}

//Close the connection to MySQL Server
$conn->close();
?>
