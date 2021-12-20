const form = document.getElementById('frm_sgn');
const inp = document.querySelectorAll('#frm_sgn input');  

const exp = {
    nom_exp: /^[a-zA-ZÀ-ÿ\s]{1,50}$/, // Letras y espacios, pueden llevar acentos.
	txt_exp: /^[a-zA-ZÀ-ÿ0-9.,#-\s]{20,200}$/,
    pwd_exp: /^[a-zA-Z0-9\_\-\.]{8,30}$/, // Letras, numeros, guion y guion_bajo
    eml_exp: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	tel_exp: /^\d{10}$/
}

const flds = {
    usr: false,
    tel: false,
	dir: false,
    eml: false,
	pwd: false
}

const valFrm = (e) => {
    switch (e.target.name) {
        case 'nom_usr':
            valFld(exp.nom_exp, e.target, 'usr');
        break;
        case 'tel_usr':
            valFld(exp.tel_exp, e.target, 'tel');
        break;
        case 'dir_usr':
            valFld(exp.txt_exp, e.target, 'dir');
        break;
        case 'eml_usr':
            valFld(exp.eml_exp, e.target, 'eml');
        break;
        case 'pwd_usr':
            valFld(exp.pwd_exp, e.target, 'pwd');
            valPwd();
        break;
        case 'cnf_usr':
            valPwd();
        break;
    }
}

const valFld = (xpr, npt, fld) => {
	if(xpr.test(npt.value)){
		document.getElementById(`grp_${fld}`).classList.remove('frm__grp-bad');
		document.getElementById(`grp_${fld}`).classList.add('frm__grp-oky');
		document.querySelector(`#grp_${fld} i`).classList.add('fa-check-circle');
		document.querySelector(`#grp_${fld} i`).classList.remove('fa-times-circle');
		document.querySelector(`#grp_${fld} .frm__inp-err`).classList.remove('frm__inp-err-ena');
		flds[fld] = true;
	} else {
		document.getElementById(`grp_${fld}`).classList.add('frm__grp-bad');
		document.getElementById(`grp_${fld}`).classList.remove('frm__grp-oky');
		document.querySelector(`#grp_${fld} i`).classList.add('fa-times-circle');
		document.querySelector(`#grp_${fld} i`).classList.remove('fa-check-circle');
		document.querySelector(`#grp_${fld} .frm__inp-err`).classList.add('frm__inp-err-ena');
		flds[fld] = false;
	}
}

const valPwd = () => {
	const inp_pwd = document.getElementById('pwd_usr');
	const inp_cnf = document.getElementById('cnf_usr');

	if(inp_pwd.value !== inp_cnf.value){
		document.getElementById(`grp_cnf`).classList.add('frm__grp-bad');
		document.getElementById(`grp_cnf`).classList.remove('frm__grp-oky');
		document.querySelector(`#grp_cnf i`).classList.add('fa-times-circle');
		document.querySelector(`#grp_cnf i`).classList.remove('fa-check-circle');
		document.querySelector(`#grp_cnf .frm__inp-err`).classList.add('frm__inp-err-ena');
		flds['pwd'] = false;
	} else {
		document.getElementById(`grp_cnf`).classList.remove('frm__grp-bad');
		document.getElementById(`grp_cnf`).classList.add('frm__grp-oky');
		document.querySelector(`#grp_cnf i`).classList.remove('fa-times-circle');
		document.querySelector(`#grp_cnf i`).classList.add('fa-check-circle');
		document.querySelector(`#grp_cnf .frm__inp-err`).classList.remove('frm__inp-err-ena');
		flds['pwd'] = true;
	}
}

const allRight = () => {
	const trm = document.getElementById('trm_usr');
	if(flds.usr && flds.tel && flds.dir && flds.eml && flds.pwd && trm.checked){
		document.getElementById('frm_msg-scs').classList.add('frm__msg-scs-ena');
		setTimeout(() => {
			document.getElementById('frm_msg-scs').classList.remove('frm__msg-scs-ena');
		}, 5000);

		document.querySelectorAll('.frm__grp-oky').forEach((ico) => {
			ico.classList.remove('frm__grp-oky');
		});

		signingIn(inp);

	} else {
		document.getElementById('frm_msg').classList.add('frm__msg-ena');
	}
}

inp.forEach((input) => {
	if (input.name !== 'trm_usr') {
    	input.addEventListener('keyup', valFrm);
    	input.addEventListener('blur', valFrm);
	}
});