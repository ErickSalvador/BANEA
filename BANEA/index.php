<?php 
    $search = '';
    if (isset($_GET['buscar'])){
        $search = $_GET['buscar'];
    }
?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BANEA || Buscar <?php echo $search; ?></title>
        <link rel="stylesheet" href="css/sty_lok.css">
    </head>
    <body>
        <header>
            <div class="mnu__cnt">
                <div class="logo">
                    <img id="logo" src="src/logo.png" alt="Logo de BANEA">
                </div>
                <div class="spc"></div>
                <div class="lnk__cnt">
                    <div class="btn__cnt">
                        <button class="btn__lnk" onclick="window.location.href='login/index.php'">¿Eres Asociado?</button>
                    </div>
                    <div class="btn__cnt">
                        <button class="btn__lnk" onclick="window.location.href='login/sign-in.php'">¿Quieres anunciarte?</button>
                    </div>
                </div>
            </div>
        </header>
        <main>
            <div class="lok__cnt">
                <div class="lok__frm">
                    <input type="text" name="lok_inp" id="lok_inp" placeholder="¿Qué se te antoja?" <?php echo "value='$search'" ?>>
                    <button id="lok_btn" class="btn__lnk" onclick="searchFood()"><i class="fas fa-search"></i> Buscar</button>
                </div>
                <div class="rsl__cnt">
                    <div id="lok_rsl"></div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
        <script src="js/spt_lok_fod.js"></script>
    </body>
</html>