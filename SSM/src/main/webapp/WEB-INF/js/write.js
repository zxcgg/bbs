$(function () {
    $("#title").blur(function () {
        $("#tspan").html("");
    })
    $("#page").blur(function () {
        $("#aspan").html("");
    })

    $("#fabiao").click(function () {
        $("#tspan").html("");
        if ($.trim($("#title").val()) == "") {
            $("#tspan").html("不能为空哦");
            $("#tspan").css("color", "red");
            return false;
        }
        if ($.trim($("#page").val()) == "") {
            $("#aspan").html("不能为空哦");
            $("#aspan").css("color", "red");
            return false;
        }
        $.ajax({
            method: "post",
            dataType: "json",
            url: "/page/write",
            data: "pagetitle=" + $("#title").val() + "&page=" + $("#page").val(),
            success: function (data) {

                if (data.msg == "成功") {
                    $.messager.alert("提示", "发表成功", 'info', function () {
                        $("#title").val("");
                        $("#page").val("");
                    });
                } else {
                    $.messager.alert("提示", "发表失败，请重新试试")
                }
            },
            // error: function () {
            //     $.messager.alert("提示", "zheli")
            // }
        })


    })
})