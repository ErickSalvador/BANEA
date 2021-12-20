<?php 
    $nom_lcl = $_POST['nom_usr'];
    $eml_lcl = $_POST['eml_usr'];

    SESSION_START();
    $_SESSION['nom_lcl'] = $nom_lcl;
    $_SESSION['eml_lcl'] = $eml_lcl;
?>