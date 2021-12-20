const searchFood = () => {
    var bqd = document.getElementById('lok_inp').value;

    $.ajax({
        url: 'buscar.php',
        type: 'GET',
        data: {
            buscar: bqd
        }, success: function (data) {
            $('#lok_rsl').html(data);
        }
    })
}