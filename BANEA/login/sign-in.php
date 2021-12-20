<?php 
    SESSION_START();
    if(isset($_SESSION['nom_lcl'])) {
        header('location: ../home/index.php');
    }

    include 'header.php'
?>
	<main class="bmn__inp">
		<!--Formulario-->
		<div class="frm__sgn" id="frm_sgn">
			<div class="frm__ttl">
				<img class="frm__lgo" src="../src/logo.png" alt="Logo de BANEA">
            	<h1>Regístrate</h1>
			</div>
			<!--Nombre-->
			<div class="frm__grp" id="grp_usr">
				<label for="nom_usr" class="frm__lbl">Nombre del establecimiento</label>
				<div class="frm__grp-inp">
					<input type="text" class="frm__inp" name="nom_usr" id="nom_usr" placeholder="Ej: Fonda Lupita...">
					<i class="frm__val-stt far fa-times-circle"></i>
				</div>
				<p class="frm__inp-err">El nombre debe tener de 3 a 30 letras.</p>
			</div>
			<!--Correo electrónico-->
			<div class="frm__grp" id="grp_eml">
				<label for="eml_usr" class="frm__lbl">Correo Electrónico</label>
				<div class="frm__grp-inp">
					<input type="email" class="frm__inp" name="eml_usr" id="eml_usr" placeholder="Ej: correo@muestra.com">
					<i class="frm__val-stt far fa-times-circle"></i>
				</div>
				<p class="frm__inp-err">Debe seguir el formato del correo.</p>
			</div>
			<!--Teléfono-->
			<div class="frm__grp" id="grp_tel">
				<label for="tel_usr" class="frm__lbl">Teléfono</label>
				<div class="frm__grp-inp">
					<input type="tel" class="frm__inp" name="tel_usr" id="tel_usr" placeholder="Ej: 5512345678, 5655...">
					<i class="frm__val-stt far fa-times-circle"></i>
				</div>
				<p class="frm__inp-err">Escriba solamente los números.</p>
			</div>
			<!--Dirección-->
			<div class="frm__grp" id="grp_dir">
				<label for="dir_usr" class="frm__lbl">Dirección</label>
				<div class="frm__grp-inp">
					<input type="text" class="frm__inp" name="dir_usr" id="dir_usr" placeholder="Calle, Número, Colonia, Delegación...">
					<i class="frm__val-stt far fa-times-circle"></i>
				</div>
				<p class="frm__inp-err">Escriba solamente los números.</p>
			</div>
			<!--Contraseña-->
			<div class="frm__grp" id="grp_pwd">
				<label for="pwd_usr" class="frm__lbl">Contraseña</label>
				<div class="frm__grp-inp">
					<input type="password" class="frm__inp" name="pwd_usr" id="pwd_usr">
					<i class="frm__val-stt far fa-times-circle"></i>
				</div>
				<p class="frm__inp-err">Debe usar de 8 a 20 numeros, letras mayúsculas y minúsculas.</p>
			</div>
			<!--Confirmar contraseña-->
			<div class="frm__grp" id="grp_cnf">
				<label for="cnf_usr" class="frm__lbl">Confirmar contraseña</label>
				<div class="frm__grp-inp">
					<input type="password" class="frm__inp" name="cnf_usr" id="cnf_usr">
					<i class="frm__val-stt far fa-times-circle"></i>
				</div>
				<p class="frm__inp-err">Ambas contraseñas deben ser iguales.</p>
			</div>
			<!--Términos y condiciones-->
			<div class="frm__grp frm__grp-trm" id="grp_trm">
				<label class="frm__lbl">
					<input class="frm__cbx" type="checkbox" name="trm_usr" id="trm_usr">
					Acepto los Terminos y Condiciones del servicio.
				</label>
			</div>
			<!--Mensaje-->
			<div class="frm__msg" id="frm_msg">
				<p><i class="fas fa-exclamation-circle"></i> <b>Error:</b> Llene todos los campos de forma correcta. </p>
			</div>
			<!--Botón de Registro-->
			<div class="frm__grp frm__grp-btn-snd">
				<button class="frm__btn" onclick="allRight()">Crear Cuenta</button>
				<!--<input type="submit" class="frm__btn" value="Crear Cuenta" id="sbm_usr">-->
				<p class="frm__msg-scs" id="frm_msg-scs">Formulario enviado exitosamente!</p>
			</div>
		</div>
	</main>
<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="../js/spt_head.js"></script>
<script src="../js/spt_account.js"></script>
<script src="../js/spt_val_sgn.js"></script>
<?php include '../footer.php'?>