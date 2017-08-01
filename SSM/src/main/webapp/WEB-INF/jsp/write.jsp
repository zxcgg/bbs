<%--
  Created by IntelliJ IDEA.
  User: zxc
  Date: 2017/7/29
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/write.js"></script>


</head>
<body>
<div style="height: 20%"></div>
<form action="/page/write" method="post" id="from">
    <div class="text-center">

        <div style="margin: 0 auto;width: 50%;">
            <input type="text" style="width: 50%; " id="title" placeholder="这里填写你的标题"><span id="tspan"></span>
            <div style="height: 20%;"></div>
            <textarea rows="10" style="width: 50%;  " id="page" placeholder="这里填写你的内容"></textarea><span
                id="aspan"></span>
        </div>
        <br>
        <button type="button" class="btn btn-success" id="fabiao">发表</button>
        <button type="reset" class="btn btn-group-xs">重置</button>
    </div>
</form>
</body>
</html>
