function signingIn (inps) {
    var account = new Array();

    for ( var i = 1;i < inps.length - 1; i++) {
        account[i-1] = inps[i-1].value;
    }

    $.ajax({
        url: '../dvr/dvr_sign_acct.php',
            type: 'POST',
            data: {
                nom: account[0],
                eml: account[1],
                tel: account[2],
                dir: account[3],
                pwd: account[4]
            }
        }).done(function () {
            $.ajax({
                url: '../dvr/dvr_aut_usr.php',
                type: 'POST',
                data: {
                    user: account[1],
                    pass: account[4]
                }
            }).done(function (resp) {
                var ssn_active = JSON.parse(resp);
                $.ajax({
                    url: '../dvr/dvr_login_usr.php',
                    type: 'POST',
                    data: {
                        nom_usr: ssn_active[0][0],
                        eml_usr: ssn_active[0][1],
                    }
                }).done(function () {
                    location.reload(true);
                })
            })
        })
}