<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SECUR || Home</title>
        <link rel="stylesheet" href="../css/sty_hd-ft.css">
        <link rel="stylesheet" href="../css/sty_main.css">
        <link rel="stylesheet" href="../css/sty_log-sgn.css">
    </head>
    <body>
        <header>
            <div class="cnt__hdr">
                <div class="lgo__hdr">
                    <div class="img__lgo">

                    </div>
                    <a href="index.php">SECUR</a>
                </div>
                <div class="nav__cnt">
                    <div class="ssn__act">
                        <div class="usr__inf">
                            <?php 
                                echo "<h3> $usrnm </h3>";
                                echo "<p> $email </p>";
                            ?>
                        </div>
                        <div class="log__out">
                            <button class="out__btn">
                                <i class="out__icn fas fa-door-closed"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <button class="mnu__btn">
                    <i class="mnu__icn fas fa-bars"></i>
                </button>
            </div>
        </header>