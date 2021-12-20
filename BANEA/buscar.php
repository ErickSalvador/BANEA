<?php
    include 'db/con_db.php';

    $search = "";

    if(isset($_GET['buscar'])){
        
        $search = $_GET['buscar'];
    
        $sql = "SELECT nom_ord, des_ord, pre_ord, dir_loc FROM ordenes AS o JOIN locales AS l ON o.eml_loc = l.eml_loc WHERE stt_ord = 'A' AND nom_ord LIKE '%$search%'";
        
        $con = new conector();
        $conexion = $con->conectar();
        $registro = $con->consulta($conexion, $sql, 4);
        
        if(!isset($registro)){
            echo '<p>No hay resultados para su busqueda</p>';
        } else {
            echo '<p>Los resultados de su busqueda son:</p>';
            echo '<table><thead><tr><th>Orden</th><th>Descripción</th><th>Precio</th><th>Dirección</th><th>Aparta</th></tr></thead><tbody>';

            for($x = 0; $x<count($registro);$x++){
                echo "<tr>";
                for($y = 0; $y<4;$y++){
                    echo "<td>".$registro[$x][$y]." </td>";
                }
                echo "<td><button class='btn__lnk'><i class='apt__icn fas fa-check-circle'></i></button></td>";
                echo "</tr>";
            }
            $con->desconectar($conexion);

            echo '</tbody></table>';
        }
    }
?>