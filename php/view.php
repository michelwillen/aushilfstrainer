<?php include "db_conn.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Bild hochladen – Aushilfstrainer</title>
	<link rel="stylesheet" href="../css/style.css">

	<style>
		body {
			display: flex;
			justify-content: center;
			align-content: flex-start;
			flex-wrap: wrap;
			min-height: 100vh;
			margin-top: 60px;
		}
		.alb {
			width: 200px;
			height: 200px;
			padding: 5px;
			
		}
		.alb img {
			width: 100%;
			height: 100%;
		}
		a {
			text-decoration: none;
			color: black;
		}
		.beschreibung {
			width: 100%;
			margin: 0 auto;
			text-align: center;
		
		}
		.url {
			width: 155px;
			padding: 5px;
		}
	</style>
</head>
<body>

		<div class="beschreibung">
			<p>Kopiere die URL und füge sie im Formular ein.</p>
		</div>
		<br>

     <?php 
          $sql = "SELECT * FROM images ORDER BY id DESC LIMIT 1";
          $res = mysqli_query($conn,  $sql);

          if (mysqli_num_rows($res) > 0) {
          	while ($images = mysqli_fetch_assoc($res)) {  ?>
             
             <div class="alb">
             	<img src="https://734301-2.web.fhgr.ch/uploads/<?=$images['image_url']?>">

				
				<input class="url" readonly type="text" value="https://734301-2.web.fhgr.ch/uploads/<?=$images['image_url']?>" id="meineURL">
				<button onclick="urlKopieren()">URL kopieren</button>
				

             </div>
          		
    <?php } }?>

	<script src="../js/url.js"></script>

</body>
</html>



