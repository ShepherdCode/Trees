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
			</style>
					<title> Shepherd University | Trees</title>
		</head>

		<body>
      <img class="center-fit" src="header.png" >

      <font class="pad" face="serif" color=#036 size=20px> Results </font>
      <img class="center-fit" src="accent_line.png" >

      <p class="pad" >
<?php
$config_file = "config.ini";
$cred = parse_ini_file($config_file);

$user_input=$_GET["tree_id"];
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
          WHERE tree_id = $user_input;";
$result = $conn -> query($query);

if ($result -> num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "<img class=\"pad\" width=25% src=\"../pictures/$user_input.jpg\"> <br>";
    echo "Tree ID: " . $row["tree_id"] . "<br>" .
        "Scientific Name: <i>"  . $row["scientific_name"] . "</i><br>" .
        "Common Name: " . $row["common_name"] . "<br>" .
        "Height: " . $row["height"] . " meters" . "<br>" .
        "Exposure to Sunlight: " . $row["exposure"] . "<br>";
    echo "</p><p class=\"space\" ></p><p class=\"pad\">";
    echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et si turpitudinem fugimus in statu et motu corporis, quid est cur pulchritudinem non sequamur? Nam, ut paulo ante docui, augendae voluptatis finis est doloris omnis amotio. Haec para/doca illi, nos admirabilia dicamus. Duo Reges: constructio interrete. Longum est enim ad omnia respondere, quae a te dicta sunt. Sic enim censent, oportunitatis esse beate vivere. In quibus doctissimi illi veteres inesse quiddam caeleste et divinum putaverunt. Sunt enim prima elementa naturae, quibus auctis vírtutis quasi germen efficitur. Longum est enim ad omnia respondere, quae a te dicta sunt. Parvi enim primo ortu sic iacent, tamquam omnino sine animo sint. Habes, inquam, Cato, formam eorum, de quibus loquor, philosophorum. Eorum enim est haec querela, qui sibi cari sunt seseque diligunt. Sed tamen est aliquid, quod nobis non liceat, liceat illis. Te enim iudicem aequum puto, modo quae dicat ille bene noris. Nunc omni virtuti vitium contrario nomine opponitur. Nam et complectitur verbis, quod vult, et dicit plane, quod intellegam; Omnes enim iucundum motum, quo sensus hilaretur. Sed haec quidem liberius ab eo dicuntur et saepius. Quid autem habent admirationis, cum prope accesseris? Dici enim nihil potest verius.";}
  } else {
    echo "<font face=\"serif\" color=#036 size=25px> ERROR 404: TREE NOT FOUND </font>";
}
}
$conn -> close();
?>
</p>
    <footer class="pad">
        Contact: Dr. Carol Z. Plautz, Professor of Biology
        [<a href="mailto:cplautz@shepherd.edu">email</a>].
    </footer>
    <img class="center-fit" src="footer.png" >
		</body>
</html>
