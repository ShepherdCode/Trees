<form action="" method="post">
<select name="genuslist">
  <?php
  $servername = "127.0.0.1";
  $username = "root";
  $password = "shepherd";
  $dbname = "sheptrees";
  $conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn -> connect_error) {
    die ("Connection failed: " . $conn -> connect_error);
  } else {

  $query = "SELECT genus_name FROM Genus;";
  $result = $conn -> query($query);

  if ($result -> num_rows > 0) {
      ?> <option value="choose"> CHOOSE GENUS </option> <?php
    while($row = $result->fetch_assoc()) {
  ?>
      <option value="<?php echo $row['genus_name']; ?>"> <?php echo $row['genus_name']; ?></option>;
  <?php
}} else {
      echo "0 results";
  }
  }
  $conn -> close();
  ?>
</select>
  <input type="submit" name="select">
</form>
<?php
$selected=$_POST["genuslist"];
$servername = "localhost:3306";
$username = "root";
$password = "shepherd";
$dbname = "sheptrees";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn -> connect_error) {
  die ("Connection failed: " . $conn -> connect_error);
} else {

$query = "SELECT s.species_name, g.genus_name, t.tree_id
          FROM Species s, Genus g, Tree t
            WHERE g.genus_id = s.genus_id
            AND s.species_id = t.species_id
            AND g.genus_name = '$selected'
            ORDER BY s.species_name ASC;";
$result = $conn -> query($query);

if ($result->num_rows > 0) {
    echo "<table><tr>
          <th>Species</th>
          <th>Genus</th>
          <th>TreeID</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["species_name"]."</td>
              <td>".$row["genus_name"]."
              <td><a href=\"treedetails.php?tree_id=".$row["tree_id"]."\">".$row["tree_id"]."</a></td></tr>";
    } echo "</table>";
} else {
    echo "0 results";
}
}
$conn->close();
?>
