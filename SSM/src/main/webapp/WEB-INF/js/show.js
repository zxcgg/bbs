$(function () {

    $("#home").click(function () {
        $("#homeframe").addClass("show")
        $("#goodframe").removeClass();
        $("#newframe").removeClass();
        $("#cardframe").removeClass();
        $("#writeframe").removeClass();
        $("#usercenter").removeClass();
        $("#home").addClass("active");
        $("#good").removeClass();
        $("#new").removeClass();
        $("#write").removeClass();
        $("#card").removeClass();
    })
    $("#good").click(function () {
        $("#homeframe").removeClass();
        $("#goodframe").addClass("show");
        $("#newframe").removeClass();
        $("#cardframe").removeClass();
        $("#writeframe").removeClass();
        $("#usercenter").removeClass();
        $("#good").addClass("active");
        $("#home").removeClass();
        $("#new").removeClass();
        $("#write").removeClass();
        $("#card").removeClass();
    })
    $("#new").click(function () {
        $("#homeframe").removeClass();
        $("#goodframe").removeClass();
        $("#cardframe").removeClass();
        $("#newframe").addClass("show")
        $("#writeframe").removeClass();
        $("#usercenter").removeClass();
        $("#new").addClass("active");
        $("#good").removeClass();
        $("#home").removeClass();
        $("#write").removeClass();
        $("#card").removeClass();
    })
    $("#write").click(function () {
        $("#homeframe").removeClass();
        $("#goodframe").removeClass();
        $("#cardframe").removeClass();
        $("#newframe").removeClass();
        $("#writeframe").addClass("show");
        $("#write").addClass("active")
        $("#usercenter").removeClass();
        $("#good").removeClass();
        $("#home").removeClass();
        $("#new").removeClass();
        $("#card").removeClass();
    })
    $("#user").click(function () {
        $("#homeframe").removeClass();
        $("#goodframe").removeClass();
        $("#cardframe").removeClass();
        $("#newframe").removeClass();
        $("#writeframe").removeClass();
        $("#user").addClass("active")
        $("#usercenter").addClass("show");
        $("#good").removeClass();
        $("#home").removeClass();
        $("#new").removeClass();
        $("#card").removeClass();
    })
    $("#card").click(function () {
        $("#write").removeClass()
        $("#homeframe").removeClass();
        $("#goodframe").removeClass();
        $("#cardframe").removeClass();
        $("#newframe").removeClass();
        $("#writeframe").removeClass();
        $("#card").addClass("active")
        $("#cardframe").addClass("show");
        $("#usercenter").removeClass();
        $("#good").removeClass();
        $("#home").removeClass();
        $("#new").removeClass();
        $("#write").removeClass()
    })


})