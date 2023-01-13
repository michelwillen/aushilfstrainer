<?php
include "db_conn.php";

if (isset($_POST['submit']) && isset($_FILES['my_image'])) {


    echo "<pre>";
    print_r($_FILES['my_image']);
    echo "</pre>";

    $img_name = $_FILES['my_image']['name'];
    $img_size = $_FILES['my_image']['size'];
    $tmp_name = $_FILES['my_image']['tmp_name'];
    $error = $_FILES['my_image']['error'];

    if ($error === 0) {
       
        // 5242880 = 5mb
        
        if ($img_size > 5242880) {
            $em = "Dein Bild darf höchstens 5MB gross sein.";
            header("Location: bild.php?error=$em");
        } else {
            $img_ex = pathinfo($img_name, PATHINFO_EXTENSION);
            $img_ex_lc = strtolower($img_ex);

            $allowed_exs = array("jpg", "jpeg", "png");

            if (in_array($img_ex_lc, $allowed_exs)) {
                $new_img_name = uniqid("IMG-", true).'.'.$img_ex_lc;
                $img_upload_path = '../uploads/'.$new_img_name;
                move_uploaded_file($tmp_name, $img_upload_path);


                // IN DB schreiben

                $sql = "INSERT INTO images (image_url) VALUES('$new_img_name')";
                mysqli_query($conn, $sql);
                header("Location: view.php");

            } else {
                $em = "Nur JPEG- und PNG-Dateien sind erlaubt.";
                header("Location: bild.php?error=$em");
            }

        }
    } else {
        $em = "Das hat leider nicht geklappt.";
        header("Location: bild.php?error=$em");
    }

} else {
    header("Location: bild.php");
}