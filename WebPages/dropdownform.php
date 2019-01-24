<form action="dropdownresults.php" method="post">
<select name="genuslist">
  <?php
  $servername = "localhost:3306";
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
