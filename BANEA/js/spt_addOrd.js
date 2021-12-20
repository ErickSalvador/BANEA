const qryBtn = document.querySelectorAll('.cnt__btn .qry__act');
var sst;

const addOrder = () => {
    var nom = document.getElementById('nom_ord').value;
    var des = document.getElementById('des_ord').value;
    var pre = document.getElementById('pre_ord').value;
    var vig = document.getElementById('vig_ord').value;

    $.ajax({
        url: '../dvr/dvr_new_ord.php',
        type: 'POST',
        data: {
            nom_ord: nom,
            des_ord: des,
            pre_ord: pre,
            vig_ord: vig
        }
    }).done(function () {
        stt = 'A'
        reDir('../home/tblOrd.php');
    })
}

const reDir = (dir) => {
    $.ajax({
        url: dir,
        type: 'POST',
        data: {
            stt_ord: stt
        },
        datatype: 'html',
        success: function (data) {
            $('#qry_cnt').html(data)
        },
        error:  function(){
            $('#qry_cnt').html('<p>error al cargar desde Ajax</p>')
        }
    })
}

const cllFnc = (e) => {
    switch (e.target.value) {
        case 'add':
            stt = '';
            reDir('../home/addOrd.html');
            break;
        case 'sel':
            stt = 'A';
            reDir('../home/tblOrd.php');
            break;
        case 'rcd':
            stt = 'R';
            reDir('../home/tblOrd.php');
            break;
        case 'del':
            stt = 'D';
            reDir('../home/tblOrd.php');
            break;
    }
}

qryBtn.forEach((btn) => {
    btn.addEventListener('click', cllFnc);
});