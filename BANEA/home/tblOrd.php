<?php
    include '../db/con_metodos.php';
    $stt = $_POST['stt_ord'];
    if(!isset($stt)){
        $stt = 'A';
    }

    $sql = "SELECT ide_ord, nom_ord, des_ord, pre_ord, vig_ord FROM ordenes WHERE stt_ord = '$stt'";
?>
<head>
    <link rel="stylesheet" href="../css/sty_tbl.css">
</head>
<table>
    <thead>
        <tr>
            <th>Orden</th>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Precio</th>
            <th>Vigencia</th>
        </tr>
    </thead>
    <tbody>
        <?php 
            shw_dta($sql, 5);
        ?>
    </tbody>
</table>