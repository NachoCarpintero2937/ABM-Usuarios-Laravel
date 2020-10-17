// ************ Delete users ***************
function delUser(id, name, status) {
    var token = $("#name").data('token');
    var estado = status == 1 ? 'INACTIVADO' : 'ACTIVADO';
    var bool = confirm("El usuario " + name + " va a ser " + estado);
    if (bool) {
        $.ajax({
            url: "action-user",
            data: {
                _token: token,
                id: id,
                status: status
            },
            type: "POST",
            timeout: 10000,
            success: function (resp) {
                if (resp.status != 0) {
                    alert(resp.message);
                    window.location.reload()
                } else {
                    alert(resp.message);
                }
            },
            error: function () { }
        });
    }
}

$("#create_user").submit(function (event) {
    var name = $("#name").val();
    var email = $("#email").val();
    var password = $("#password").val();
    var token = $("#name").data('token');
    console.log(token);
    if (!name || !email) {
        alert("Faltan completar campos necesarios");
        return false;
    }
    $.ajax({
        url: "create_user",
        data: {
            _token: token,
            name: name,
            email: email,
            password: password
        },
        type: "POST",
        dataType: "json",
        timeout: 10000,
        success: function (resp) {
            if (resp.status != 0) {
                alert(resp.message)
                window.location.reload();
            } else {
                alert(resp.message)
            }
        },
        error: function () { }
    });
});

$("#update-user").submit(function () {
    var name = $("#name").val()
    var email = $("#email").val();

    if (!name) {
        $("#name").css('border', '1px solid red');
        alert("Complete el campo nombre");
        return false;
    }
    if (!email) {
        $("#email").css('border', '1px solid red');
        alert("Complete el campo email");
        return false;
    }
}); 