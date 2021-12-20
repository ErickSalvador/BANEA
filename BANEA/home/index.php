<?php
    SESSION_START();
    if(!isset($_SESSION['nom_lcl'])) {
        header('location: ../login/index.php');
    }

    $usrnm = $_SESSION['nom_lcl'];
    $email = $_SESSION['eml_lcl'];

    include 'header.php'; 
?>
        <main>
            <div class="cnt__grl">
                <div class="cnt__btn">
                    <button class="qry__act" id="add_Ord" value="add">Nueva Orden</button>
                    <button class="qry__act" id="act_Ord" value="sel">Ordenes Activas</button>
                    <button class="qry__act" id="cmp_Ord" value="rcd">Ordenes Entregadas</button>
                    <button class="qry__act" id="can_Ord" value="del">Ordenes Canceladas</button>
                </div>
                <div class="qry__cnt" id="qry_cnt"></div>
            </div>
        </main>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    <script src="../js/spt_head.js"></script>
    <script src="../js/spt_home.js"></script>
    <script src="../js/spt_addOrd.js"></script>
<?php
    include '../footer.php'
?> 