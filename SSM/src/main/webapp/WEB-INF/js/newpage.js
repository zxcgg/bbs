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
                singleSelect: false,
                rownumbers: true,
                fitColumns: true,
                collapsible: true,
                pagination: true,
                url: '/page/newpage',
                method: 'get',
                pageSize: 10,
                striped: true,
                toolbar: '#MymoduleToolBar',
                columns: [
                    [

                        {
                            field: 'pagetitle',
                            align: 'center',
                            title: "帖子列表",
                            width: 80,
                            formatter: function (value) {
                                return '<textarea class="form-control text-center"value="disabled" style="resize: none;"  rows="3"  readonly>' + value + '</textarea>';
                            }
                        }, {
                        field: 'page',
                        align: 'center',
                        title: "内容",
                        width: 80,
                        formatter: function (value) {
                            return '<textarea class="form-control text-center"value="disabled" style="resize: none;"  rows="3"  readonly>' + value + '</textarea>';
                        }
                    },


                    ]
                ]
            });

        },


    }
    Mymodule.initTable();


});
