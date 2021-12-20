const lot = document.querySelector('.out__btn');
const icn = document.querySelector('.out__icn');

const opn_dor = () => {
    icn.classList.add('fa-door-open');
    icn.classList.remove('fa-door-closed');
}

const cls_dor = () => {
    icn.classList.add('fa-door-closed');
    icn.classList.remove('fa-door-open');
}

lot.addEventListener('mouseover', opn_dor);
lot.addEventListener('mouseout', cls_dor);
lot.addEventListener('click', function () {
    window.location.href = '../dvr/dvr_logout_usr.php';
});