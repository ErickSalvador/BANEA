const nav = document.querySelector('.nav__cnt');
const btn = document.querySelector('.mnu__btn');

const mnu_fxs = () => {
    nav.classList.toggle('ena');
}

btn.addEventListener('click', mnu_fxs);