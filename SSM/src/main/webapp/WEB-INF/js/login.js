$(function () {
    $("#zhuce").click(function () {
        location.href = "/register";
        return false;
    })
    $("#login-button").click(function () {
        if ($.trim($("#username").val()) == "" || $.trim($("#pass").val()) == "") {
            $("#vailspan").html("请仔细检查输入框，不能为空哦");
            $("#vailspan").css("color", "red");
            return false
        }
    })
    $("#change").click(function () {
        $("#vailspan").html("");
        $("#yinyue").html("<audio   autoplay><source src=\"http://mp3.flash127.com/music/" + Math.ceil(Math.random() * 100 + 18440) + ".mp3\" type=\"audio/mpeg\"> 您的浏览器不支持音频格式。  </audio>")
        $("#vailspan").html("已经切换歌曲，请耐心等待！！！");
        $("#vailspan").css("color", "#"+Math.round(Math.random()*1000));
    })


});