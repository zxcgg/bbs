$(function () {
    var t = false;
    $("#username").blur(function () {
        $("#tx").removeClass();
        $("#tx").html("");
        if ($.trim($(this).val()) === "") {
            $("#tx").html("*用户名必填且不能为空");
            $("#tx").addClass("alert alert-danger");
            t = false;
            return false;
        }
        if (!/^\w{5,10}$/.test($.trim($(this).val()))) {
            $("#tx").html("*用户名不得少于6位,且不能大于10位");
            $("#tx").addClass("alert alert-danger");
            t = false;
            return false;
        }
        $.ajax({
            method: "post",
            url: "/user/vailuser",
            data: "username=" + $.trim($("#username").val()),

            success: function (data) {
                if (data == "") {

                    $("#tx").html("用户名可用");
                    $("#tx").addClass("alert alert-success");
                } else {
                    $("#tx").html("*用户名重复，请更换");
                    $("#tx").addClass("alert alert-danger");
                    t = false;
                    return false;
                }
            }


        })
        t = true;


    });
    $("#pass").blur(function () {
        $("#tm").removeClass();
        $("#tm").html("");
        if ($.trim($(this).val()) === "") {
            $("#tm").html("*密码必填且不能为空");
            $("#tm").addClass("alert alert-danger");
            t = false;
            return false;
        }
        if (!/^\w{6,10}$/.test($.trim($(this).val()))) {
            $("#tm").html("*密码不得少于5位,且不能大于11位");
            $("#tm").addClass("alert alert-danger");
            t = false;
            return false;
        }
        t = true;
    });
    $("#repass").blur(function () {

        $("#trm").removeClass();
        $("#trm").html("");
        if ($.trim($(this).val()) != $("#pass").val()) {
            $("#trm").html("*两次输入密码不一致");
            $("#trm").addClass("alert alert-danger");
            t = false;
            return false;
        }
        t = true;
    });

    $("#zhuce").click(function () {
        if ((!t)) {
            alert("请仔细检查所有输入框");
            return false;
        }

    });

})
;