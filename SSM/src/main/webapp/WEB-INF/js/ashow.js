var Mymodule = null;
$(function () {
    if ($("#pd").val() == "") {
        location.href = "/admin";
        return false;
    }
    Mymodule = {
        name: 'admin',
        table: $('#MymoduleTable'),
        initTable: function () {
            Mymodule.table.datagrid({
                width: '100%',
                iconCls: 'icon-search',
                singleSelect: false,
                rownumbers: true,
                fitColumns: true,
                collapsible: true,
                pagination: true,
                url: '/admin/user',
                method: 'get',
                pageSize: 10,
                striped: true,
                pageList: [10, 20, 30, 40],
                toolbar: '#MymoduleToolBar',
                columns: [
                    [{
                        field: '',
                        checkbox: true
                    },
                        {
                            field: 'id',
                            hidden: true,
                        },
                        {
                            field: 'username',
                            align: 'center',
                            title: '用户名',
                            width: 80
                        },
                        {
                            field: 'pass',
                            align: 'center',
                            title: '密码',
                            width: 80
                        }
                        // {
                        //     title: 'path',
                        //     field: 'path',
                        //     align: 'center',
                        //     width: 60,
                        //     formatter: function (value) {
                        //         if (value != null) {
                        //             return '<img src= "' + value + '" style="width:100%;height: 30px">';
                        //         }
                        //     }
                        // }
                    ]
                ]
            });

        },
        obj: {
            remove: function () {
                YINHE.deleteData(Mymodule, Mymodule.name);
            }
        }
    }
    Mymodule.initTable();
});
var YINHE = {


    // 删除数据抽取
    deleteData: function (module) {
        var selects = Mymodule.table.datagrid('getSelections');
        if (selects.length == 0) {
            $.messager.alert('提示', '没有选中任何行数据！', 'info');
            return;
        }
        $.messager.confirm('确认', '确定删除吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < selects.length; i++) {
                    ids.push(selects[i].username);
                }
                var params = {
                    "ids": ids.join(',')
                };

                $.ajax({
                    method: 'post',
                    data: params,
                    url: '/' + module.name + '/udelete',
                    success: function (data) {
                            $.messager.alert('提示', data.msg);
                    }
                });
            }
        });
    },


}
