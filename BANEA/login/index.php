<?php 
    SESSION_START();
    if(isset($_SESSION['nom_lcl'])) {
        header('location: ../home/index.php');
    }

    include'header.php';
?>
	<main class="bmn__inp">
		<!--Formulario-->
		<div class="frm__log" id="frm_log">
			<div class="frm__ttl">
				<div class="frm__spc">
					<img class="frm__lgo" src="../src/logo.png" alt="Logo de BANEA">
				</div>
            	<h1>Inicia Sesión</h1>
            </div>
			<!--Correo electrónico-->
			<div class="frm__grp" id="grp_eml">
				<label for="eml_usr" class="frm__lbl">Correo Electrónico</label>
				<div class="frm__grp-inp">
					<input type="email" class="frm__inp" name="eml_usr" id="eml_usr" placeholder="Ej: correo@muestra.com">
				</div>
			</div>
			<!--Contraseña-->
			<div class="frm__grp" id="grp_pwd">
				<label for="pwd_usr" class="frm__lbl">Contraseña</label>
				<div class="frm__grp-inp">
					<input type="password" class="frm__inp" name="pwd_usr" id="pwd_usr">
				</div>
			</div>
			<!--Botón de Registro-->
			<div class="frm__grp frm__grp-btn-snd">
				<button class="frm__btn" onclick="loggingIn()">Iniciar Sesión</button>
			</div>
			<a href="#">He olvidado mi contraseña.</a>
            <a href="sign-in.php">No tengo una cuenta.</a>
		</div>
	</main>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
<script src="../js/spt_head.js"></script>
<script src="../js/spt_session.js"></script>
<?php include '../footer.php'?>