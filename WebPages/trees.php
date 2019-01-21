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

				<font class="pad" face="serif" color=#036 size=5px> Try it out! </font>

				<form class="pad" action = "results.php" method="post">
					Enter TreeID: <br>
				<input type = "text" name="search">
				<input type = "submit" name = "submit" value = "Search">
				</form>

				<footer class="pad">
					Contact: Dr. Carol Z. Plautz, Professor of Biology
					[<a href="mailto:cplautz@shepherd.edu">email</a>].
				</footer>
				<img class="center-fit" src="footer.png" >

		</body>
</html>
