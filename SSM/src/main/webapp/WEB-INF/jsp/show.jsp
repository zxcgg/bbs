<%--
 Created by IntelliJ IDEA.
 User: zxc
 Date: 2017/7/28
 Time: 19:33
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="js/show.js"></script>
</head>
<body>
<div style="overflow-y: hidden">

    <nav class="navbar navbar-default" role="navigation">
        <div class=" panel panel-success">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" id="user" href="#">${sessionScope.user.username}</a>
                    <input type="text" id="pd" value="${sessionScope.user.username}" style="display: none;">
                </div>
                <div>
                    <ul class="nav nav-pills">
                        <li role="presentation" id="home"><a href="#">主页</a></li>
                        <li role="presentation" id="new"><a href="#">新贴</a></li>
                        <li role="presentation" id="good"><a href="#">精贴</a></li>
                        <li role="presentation" id="write"><a href="#">发帖</a></li>
                        <li role="presentation" id="card"><a href="#">手持身份证</a></li>
                        <li role="presentation" id="out" style="float: right;"><a href="#"
                                                                                  onclick="location.href='/login'">退出</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <iframe src="/card" style="display: none" id="cardframe" width="100%" height="90%"></iframe>
    <iframe src="/usercenter" style="display: none" id="usercenter" width="100%" height="90%"></iframe>
    <iframe src="/home" style="display: none" id="homeframe" width="100%" height="90%"></iframe>
    <iframe src="/writepage" style="display: none" id="writeframe" width="100%" height="90%"></iframe>
    <iframe src="/newpage" style="display: none" id="newframe" width="100%" height="90%"></iframe>
    <iframe src="/goodpage" style="display: none" id="goodframe" width="100%" height="90%"></iframe>
</div>

</body>
<script>
    $(function () {
        if ($("#pd").val() == "") {
            location.href = "/login";
            return false;
        }
    })


</script>
</html>
