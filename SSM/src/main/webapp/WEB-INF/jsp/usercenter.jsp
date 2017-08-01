<%--
  Created by IntelliJ IDEA.
  User: zxc
  Date: 2017/7/29
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="/css/icon.css"/>
    <link rel="stylesheet" type="text/css" href="/css/my.css"/>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/datagrid-detailview.js"></script>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <div region="center" border="false"
         style="padding: 10px; background: #fff; border: 1px solid #ccc;">
        <form id="moduleEditForm" class="itemForm" enctype="form-data" method="post">
            <table cellpadding=3 class="table" style="margin: 0 auto;">
                <input type="text" value="${sessionScope.user.username}" id="username" style="display: none"></input>
                <tr>
                    <td>请输入旧密码　:</td>
                    <td><input type="password" class=" myinput" id="oldpass" name="oldpass"/></td>
                </tr>
                <tr>
                    <td>请输入新密码　:</td>
                    <td><input id="newpass" type="password" name="newpass"
                               class=" myinput"/></td>
                </tr>
                <tr>
                    <td>再次输入新密码:</td>
                    <td><input type="password" id="apass" class=" myinput"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a id="btnEp" href="javaScript:void (0)">确定</a>
                        <a id="cancel" href="javaScript:void (0)">清空</a>
                    </td>
                </tr>
            </table>

        </form>

    </div>
</div>


</div>
<script>
    $(function () {
        $('#btnEp').linkbutton({
            iconCls: "icon-ok",
            width: 60,
            height: 30,
        });
        $("#cancel").linkbutton({
            iconCls: "icon-cancel",
            width: 60,
            height: 30,
        });

//        if ($("#newpass").val() != $("#apass").val()) {
//            $("#oldspan").html("旧密码不能为空且不能为空格");
//            return false;
//        }
        $('#btnEp').click(function () {
            $('#moduleEditForm').form('submit', {
                onSubmit: function () {
                    if ($.trim($("#oldpass").val()) == '') {
                        $.messager.alert("提示", "旧密码不能为空且不能为空格")
                        return false;
                    }
                    if (!/^(\w){6,10}$/.test($("#newpass").val())) {
                        $.messager.alert("提示", "新密码只能输入6-10个字母、数字、下划线");
                        return false;
                    }
                    if ($("#newpass").val() != $("#apass").val()) {
                        $.messager.alert("提示", "两次密码输入不一致");
                        return false;
                    }
                    $.ajax({
                        url: '/user/cpass',
                        method: "get",
                        data: "pass=" + $.trim($("#oldpass").val()) + "&newpass=" + $.trim($("#newpass").val()) + "&username=" + $("#username").val(),
                        success: function (data) {
                            if (data == "success") {
                                $.messager.alert('提示', '修改成功,即将退出重新登陆', 'info', function () {
                                    $('#categoryEdit').window('close');
                                    parent.location.href="/login"
                                });
                            } else {
                                $.messager.alert("提示", "修改失败");
                            }
                        }
                    })
                }

            })
            ;
        });
        $("#cancel").click(function () {
            $("#moduleEditForm")[0].reset();
        })

    });
</script>
</body>
</html>
