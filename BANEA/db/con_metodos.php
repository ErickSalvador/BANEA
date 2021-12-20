<?PHP 
    include 'con_db.php';

    function aut_rgs($sql){
        $con = new conector();
        $conexion = $con->conectar();
        $resp = $con->logging($conexion, $sql);
        $con->desconectar($conexion);
        return $resp;
    }

    function add_rgs($sql){
        $con = new conector();
        $conexion = $con->conectar();
        $con->insercion($conexion, $sql);
        $con->desconectar($conexion);  
    }

    function shw_dta($sql, $col){
        $con = new conector();
        $conexion = $con->conectar();
        $registro = $con->consulta($conexion, $sql, $col);

        for($x = 0; $x<count($registro);$x++){
            echo "<tr>";
            for($y = 0; $y<$col;$y++){
                echo "<td>".$registro[$x][$y]." </td>";
            }
            echo "<td><button id='dlv'><i class='fas fa-check-square'></i></button></td>";
            echo "<td><button id='dlt'><i class='fas fa-trash'></i></button></td>";
            echo "</tr>";
        }
                                    
        echo "</table>";
        $con->desconectar($conexion);
    }
?>