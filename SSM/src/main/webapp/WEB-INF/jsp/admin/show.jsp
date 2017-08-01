<%--
  Created by IntelliJ IDEA.
  User: zxc
  Date: 2017/7/30
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
    <script type="text/javascript" src="/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/css/icon.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/js/ashow.js"></script>
</head>

<input type="text" id="pd" value="${sessionScope.admin.adminname }" style="display: none;">
<div>
    <h2>
        <lu class="label label-success ">欢迎您管理员</lu>
        <lu class="btn btn-danger" style="float: right;" onclick="location.href='/admin'; ">退出</lu>
    </h2>
</div>
<div id="tt" class="easyui-tabs" style="width:100%;height:96%;">

    <div title="用户管理" style="padding:10px">
        <div style="height: 100%;width: 100%;">
            <div id="MymoduleTable"></div>
            <div id="MymoduleToolBar" style="padding: 5px">
                <div>
                    <a href="#" iconCls="icon-remove" onclick="Mymodule.obj.remove()"
                       class="easyui-linkbutton moduledelete">删除</a>
                </div>
                </div>
            </div>
        </div>
    <div title="帖子管理" style="padding:10px">
        <iframe src="page1" width="100%" height="90%"></iframe>
    </div>
    </div>

</div>

</div>
</body>
<script>
    $(function () {
        $('#win').window({
            collapsible:false,
            minimizable:false,
            maximizable:false
        });
    })


</script>
</html>
