<%--
  Created by IntelliJ IDEA.
  User: zxc
  Date: 2017/7/30
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理员登录</title>

    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/js/jquery-2.1.0.js"></script>
    <link href="/css/adminlogin.css" rel="stylesheet" type="text/css">


</head>
<body>
<div class="top"></div>
<div class="main">
    <div class="box">
        <form method="post" action="/admin/login" id="adminLoginForm">
            <table cellspacing="0" align="center" border="0" cellpadding="0" width="260">
                <tbody>
                <tr>
                    <td height="30">管理员帐号：</td>
                </tr>
                <tr>
                    <td height="40"><input name="adminname" placeholder=" " typ  class="user user_bg1" id="user" tabindex="1" type="text" >
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="30" width="209">管理员密码：</td>
                </tr>
                <tr>
                    <td height="40"><input name="adminpass" id="password" class="user user_bg2" type="password"></td>
                </tr>
                <tr>
                    <td>
                        <div id="notice" class="noticediv"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="60" valign="bottom">
                        <div style="height: 20px;width: 60%;">
                            <input name="submit" class="btn btn-success" value="登陆" type="submit">
                            <input  class="btn btn-danger"  style="float: right"   value="重置" type="reset">
                        </div>


                        </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>

    <div class="bottom"></div>
</div>


</body>
</html>
