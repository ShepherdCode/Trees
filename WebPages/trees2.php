<html>
		<head>
			<style>
				* {
					margin:0;
					padding:0;
				}
				.imgbox {
					display: grid;
					height: 100%;
				}
				.center-fit {
					max-width: 100%;
					max-height: 100%;
					margin: auto;
				}
				.pad {
					padding-top: 1%;
					padding-left: 36.7%;
					padding-right: 10%;
				}
				p.space {
					padding-top: 2%;
				}
        .sub_button {
          background-color: #036;
          border: none;
          color: white;
          padding:.7% 3%;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
        }
        select {
          font-size: 200%;
        }
        table {
          width: 80%;
        }
        th {
          height: 5%;
        }
			</style>
					<title> Shepherd University | Trees</title>
		</head>

		<body>
				<img class="center-fit" src="header.png" >

				<font class="pad" face="serif" color=#036 size=20px> Trees </font>
				<img class="center-fit" src="accent_line.png" >

				<p class="pad"> The Shepherd Trees project provides information about
				every tree on the campus of Shepherd University.
				The information gathered by
				Shepherd students and faculty
				includes biological, physical, and historical details.
				Shepherd Trees is a project of the
				College of Natural Sciences & Mathematics (<a href="http://www.shepherd.edu/snsm">CNSM</a>)
				at <a href="http://www.shepherd.edu/">Shepherd University</a>. </p>

				<p class="space"> </p>

				<font class="pad" face="serif" color=#036 size=5px> Find a Tree! </font>

        <p class="pad"> Select a genus from the drop-down menu below to see all available species on campus as well as the unique Tree ID of those species: </p>

        <form class="pad" action="" method="post">
        <select name="genuslist">
          <?php
					$config_file = "config.ini";
					$cred = parse_ini_file($config_file);

          $servername = "localhost:3306";
          $username = $cred['username'];
          $password = $cred['password'];
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
          ?>
        </select>
          <input type="submit" name="select" class="sub_button">
        </form>
        <?php
        $selected=$_POST["genuslist"];

        $query = "SELECT s.species_name, g.genus_name, t.tree_id
                  FROM Species s, Genus g, Tree t
                    WHERE g.genus_id = s.genus_id
                    AND s.species_id = t.species_id
                    AND g.genus_name = '$selected'
                    ORDER BY s.species_name ASC;";
        $result = $conn -> query($query);

        if ($result->num_rows > 0) {
            echo "<table class=\"pad\"><tr>
                  <th>Genus</th>
                  <th>Species</th>
                  <th>TreeID</th></tr>";
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["genus_name"]."</td>
                      <td>".$row["species_name"]."
                      <td><a href=\"results2.php?tree_id=".$row["tree_id"]."\">".$row["tree_id"]."</a></td></tr>";
            } echo "</table>";
        } else {
            echo "<p class=\"pad\"> 0 results </p>";
        }
        $conn->close();
        ?>
				<footer class="pad">
					Contact: Dr. Carol Z. Plautz, Professor of Biology
					[<a href="mailto:cplautz@shepherd.edu">email</a>].
				</footer>
				<img class="center-fit" src="footer.png" >

		</body>
</html>
