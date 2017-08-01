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
                // singleSelect: false,
                rownumbers: true,
                fitColumns: true,
                collapsible: true,
                pagination: true,
                url: '/page/goodpage',
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
                            field: 'pid',
                            hidden: true,
                        },
                        {
                            field: 'pagetitle',
                            align: 'center',
                            title: '标题',
                            width: 80
                        },
                        {
                            field: 'page',
                            align: 'center',
                            title: '内容',
                            width: 80,
                            formatter: function (value) {

                                return '<textarea class="form-control text-center"value="disabled" style="resize: none;"  rows="3"  readonly>' + value + '</textarea>';
                            }
                        },
                        {
                            title: '精贴',
                            field:
                                'good',
                            align:
                                'center',
                            width:
                                60,
                            formatter:

                                function (value) {
                                    if (value == 1) {
                                        return '   <span  >是</span>';
                                    } else return '   <span  >否</span>';
                                }
                        }
                    ]
                ]
            })
            ;

        },
        obj: {
            remove: function () {
                YINHE.deleteData(Mymodule, Mymodule.name);
            },
            good: function () {
                YINHE.good(Mymodule, Mymodule.name);
            },nogood: function () {
                YINHE.nogood(Mymodule, Mymodule.name);
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
                    ids.push(selects[i].pid);
                }
                var params = {
                    "ids": ids.join(',')
                };

                $.ajax({
                    method: 'post',
                    data: params,
                    url: '/' + module.name + '/pdelete',
                    success: function (data) {
                        if (data.status == 200) {
                            module.table.datagrid('loaded');
                            module.table.datagrid("reload");
                            module.table.datagrid("unselectAll");
                            $.messager.alert('提示', '删除成功!');
                        } else {
                            $.messager.alert('Warning', '删除失败');
                        }
                    }
                });
            }
        });
    },
    good: function (module) {
        var selects = Mymodule.table.datagrid('getSelections');
        if (selects.length == 0) {
            $.messager.alert('提示', '没有选中任何行数据！', 'info');
            return;
        }
        $.messager.confirm('确认', '确定加精吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < selects.length; i++) {
                    ids.push(selects[i].pid);
                }
                var params = {
                    "ids": ids.join(',')
                };

                $.ajax({
                    method: 'post',
                    data: params,
                    url: '/' + module.name + '/goodpage',
                    success: function (data) {

                        if (data.status == 200) {
                            module.table.datagrid('loaded');
                            module.table.datagrid("reload");
                            module.table.datagrid("unselectAll");
                            $.messager.alert('提示', '加精成功!');
                            module.table.datagrid("reload");
                        } else {
                            $.messager.alert('Warning', '加精失败');
                        }
                    }
                });
            }
        });
    },
    nogood: function (module) {
        var selects = Mymodule.table.datagrid('getSelections');
        if (selects.length == 0) {
            $.messager.alert('提示', '没有选中任何行数据！', 'info');
            return;
        }
        $.messager.confirm('确认', '确定取消加精吗？', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < selects.length; i++) {
                    ids.push(selects[i].pid);
                }
                var params = {
                    "ids": ids.join(',')
                };

                $.ajax({
                    method: 'post',
                    data: params,
                    url: '/' + module.name + '/nogoodpage',
                    success: function (data) {
                        if (data.status == 200) {
                            module.table.datagrid('loaded');
                            module.table.datagrid("reload");
                            module.table.datagrid("unselectAll");
                            $.messager.alert('提示', '取消加精成功!');
                            module.table.datagrid("reload");
                        } else {
                            $.messager.alert('Warning', '取消加精失败');
                        }
                    }
                });
            }
        });
    },


}
