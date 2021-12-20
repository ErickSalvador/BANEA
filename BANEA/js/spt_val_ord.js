var inp = document.querySelectorAll('#frm_ord input');
var d = new Date();

var exp = {
    nom_exp: /^[a-zA-ZÀ-ÿ\s]{1,50}$/, // Letras y espacios, pueden llevar acentos.
	txt_exp: /^[a-zA-ZÀ-ÿ0-9.,#-\s]{20,200}$/,
    pre_exp: /^[0-9.]{1,6}$/,
    vig_exp: /^[0-9-]{10}T[0-9]{2}:[0-9]{2}$/
}

var flds = {
    nom: false,
    des: false,
	pre: false,
    vig: false
}

var toDay = () => {
    var hoy = `${d.getFullYear()}-${d.getMonth()}-${d.getDate()}`;
    var hor = `T${d.getHours()}:${d.getMinutes()}`;
    return hoy + hor;
}

var valFrm = (e) => {
    switch (e.target.name) {
        case 'nom_ord':
            valFld(exp.nom_exp, e.target, 'nom');
        break;
        case 'des_ord':
            valFld(exp.txt_exp, e.target, 'des');
        break;
        case 'pre_ord':
            valFld(exp.pre_exp, e.target, 'pre');
        break;
        case 'vig_ord':
            valFld(exp.vig_exp, e.target, 'vig');
        break;
    }
}

var valFld = (xpr, npt, fld) => {
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

var allRight = () => {
	const trm = document.getElementById('trm_usr');
	if(flds.nom && flds.des && flds.pre && flds.vig) {
		document.getElementById('frm_msg-scs').classList.add('frm__msg-scs-ena');
		setTimeout(() => {
			document.getElementById('frm_msg-scs').classList.remove('frm__msg-scs-ena');
		}, 5000);

		document.querySelectorAll('.frm__grp-oky').forEach((ico) => {
			ico.classList.remove('frm__grp-oky');
		});
		addOrder();

	} else {
		document.getElementById('frm_msg').classList.add('frm__msg-ena');
	}
}

inp.forEach((input) => {
    input.addEventListener('keyup', valFrm);
    input.addEventListener('blur', valFrm);
    if(input.name == 'vig_ord'){
        inp[3].setAttribute('min', toDay());
    }
});