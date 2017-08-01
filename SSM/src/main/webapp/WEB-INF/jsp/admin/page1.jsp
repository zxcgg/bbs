<%--
  Created by IntelliJ IDEA.
  User: zxc
  Date: 2017/8/1
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script type="text/javascript" src="/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/css/icon.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
<script type="text/javascript"src="/js/page1.js"></script>
<body>
<div style="height: 100%;width: 100%;">
    <div id="MymoduleTable"></div>
    <div id="MymoduleToolBar" style="padding: 5px">
        <div>
            <a href="#" iconCls="icon-cancel" onclick="Mymodule.obj.remove()"
               class="easyui-linkbutton moduledelete">删除</a>
            <a href="#" iconCls="icon-add" onclick="Mymodule.obj.good()"
               class="easyui-linkbutton moduledelete">加精</a>
            <a href="#" iconCls="icon-remove" onclick="Mymodule.obj.nogood()"
               class="easyui-linkbutton moduledelete">取消加精</a>
        </div>
    </div>
</div>
</body>
</html>
