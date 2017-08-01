var Mymodule = null;
$(function () {
    if ($("#pd").val() == "") {
        location.href = "/page";
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
                url: '/page/ugoodpage',
                method: 'get',
                pageSize: 10,
                striped: true,
                pageList: [10, 20, 30, 40],
                toolbar: '#MymoduleToolBar',
                columns: [
                    [
                        {
                            field: 'pid',
                            hidden: true,
                        },
                        {
                            field: 'pagetitle',
                            align: 'center',
                            title: '标题',
                            width: 80,
                            formatter: function (value) {
                                return '<textarea class="form-control text-center"value="disabled" style="resize: none;"  rows="3"  readonly>' + value + '</textarea>';;
                            }
                        },
                        {
                            field: 'page',
                            align: 'center',
                            title: '内容',
                            width: 80,
                            formatter: function (value) {
                                return '<textarea class="form-control text-center"value="disabled" style="resize: none;"  rows="3"  readonly>' + value + '</textarea>';
                            }
                        }
                    ]
                ]
            })
            ;

        },

    }
    Mymodule.initTable();
});

