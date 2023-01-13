<?php include "db_conn.php"; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bild hochladen – Aushilfstrainer</title>
	<link rel="stylesheet" href="../css/style.css">

    <style>
		body {
			display: flex;
			justify-content: center;
			align-items: center;
			flex-wrap: wrap;
			min-height: 100vh;
		}

		form {
			display: flex;
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
	</style>

</head>
<body>
    

	

	<h1>Wähle dein Profilbild aus</h1>

    <form   action="upload.php"
            method="post"
            enctype="multipart/form-data">

            <input  type="file"
                    name="my_image"
					class="button">
                    
            <input  type="submit" 
                    name="submit"
                    value="Hochladen"
					class="button">

    </form>

	<?php if (isset($_GET['error'])): ?>
		<p><?php echo $_GET['error']; ?></p>
	<?php endif ?>



</body>
</html>