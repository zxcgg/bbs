<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/js/jquery-2.1.0.js"></script>
    <script type="text/javascript">
    </script>
    <script type="text/javascript" src="/js/register.js">

    </script>

    <title>注册</title>
</head>
<body>
<div class="">
    <form action="/user/register"
          id="register" method="post" role="form" class="form-actions">
        <div class="panel panel-default ">
            <div class="panel panel-heading text-center">注册页面</div>
            <div class="panel-body  text-center">
                <div style="padding: 7px 152px 42px;">
                    用户名：
                    <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名">
                    <div id="tx"></div>


                    密 码： <input type="password" id="pass" name="pass" class="form-control" placeholder="请输入密码">
                    <div id="tm"></div>
                    确认密码： <input type="password" name="repass" class="form-control" id="repass" placeholder="请再次输入密码">
                    <div id="trm"></div>
                    <br>
                    <%--验证码： <input type="text" name="yzm"  class="form-control" id="yzm"><img src="/user/userlogin" id="imgvail"><br><br>--%>
                    <input type="submit" class="btn btn-circle" id="zhuce" value="注册">
                    <input type="button" class="btn btn-default" onclick="location.href='/login'" value="返回登录">
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>