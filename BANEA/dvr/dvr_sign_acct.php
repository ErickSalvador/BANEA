<?php
    require '../db/con_metodos.php';

    $nom = $_POST['nom'];
    $tel = $_POST['tel'];
    $dir = $_POST['dir'];
    $eml = $_POST['eml'];
    $pwd = $_POST['pwd'];

    $sql= "INSERT INTO locales VALUES('$nom', '$tel', '$dir', '$eml', '$pwd')";

    $autent = add_rgs($sql);
?>