<?php 
    SESSION_START();
    require '../db/con_metodos.php';

    $eml = $_SESSION['eml_lcl'];
    $nom = $_POST['nom_ord'];
    $des = $_POST['des_ord'];
    $pre = $_POST['pre_ord'];
    $vig = $_POST['vig_ord'];

    $sql = "SELECT COUNT(*) + 1 FROM ordenes";

    $preId = aut_rgs($sql);
    $ide = (int)$preId[0][0];
    
    $add = "INSERT INTO ordenes VALUES('$ide', '$eml', '$nom', '$des', '$pre', '$vig', 'A')";
    $qry = add_rgs($add);

?>