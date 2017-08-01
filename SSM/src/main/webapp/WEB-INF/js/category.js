var Category;
$(function() {
	
	
	Category = {
		name : 'category',
		css1:'categoryyinhe',
		css2:'categoryCRUD',
		table : $("#categoryTable"),
		inittable : function() {
			Category.table
					.datagrid({
						width : '100%',
						title : '商品品类',
						iconCls : 'icon-search',
						singleSelect : false,
						rownumbers : true,
						fitColumns : true,
						collapsible : true,
						pagination : true,
						url : '/category/list',
						method : 'get',
						pageSize : 10,
						striped : true,
						pageList : [ 10, 20, 30, 40 ],
						toolbar : '#categoryToolBar',
						columns : [ [
										{
											field:'',
											checkbox : true
										},
										{
											field : 'id',
											title : 'id',
											hidden:true
										},
										{
											field : 'code',
											title : 'code',
											align:'center',
											width:10,
											editor: {
												type:'validatebox',
												options:{
													required:true,
													missingMessage:'需要填写',
													//invalidMessage:'信息无效',
													validateOnBlur:true,
													validType:['upperCase']
												}
											}
										},
										{
											field : 'fName',
											align : 'center',
											title : 'Full Name',
											sortable : true,
											width : 60,
											editor: {
												type:'validatebox',
												options:{
													required:true,
													missingMessage:'需要填写',
													invalidMessage:'信息无效',
													validateOnBlur:true,
												/* 	validType:['email','length[0,20]'] */
													validType:'length[2,20]'
												}
											}
										},
										{
											field : 'pName',
											align : 'center',
											title : 'Print Name',
											width : 60,
											editor: {
												type:'validatebox',
												options:{
												}
											}
										},
										{
											field : 'descs',
											align : 'center',
											title : 'descs',
											width : 60,
											editor:{
												type:'text',
												options:{
													
												}
											}
										},
										{
											title : 'active',
											field : 'active',
											align : 'center',
											width : 100,
											formatter : function(value, row, index) {
												if (value == 1) {
													return '<input type="checkbox"  checked="true"  disabled="disabled">';
												} else {
													return '<input type="checkbox" disabled="disabled">';
												}
											},
											editor:{
												type:'checkbox',
												options:{  
											            on: "1",  
											            off: "0"  
											    } 
											}
										} ] ],
						onAfterEdit : function(index, row, changes) {
							YINHE.onAfterEditData(Category, row);
						}
					});

			Category.table.datagrid('getPager').pagination({ // 分页栏下方文字显示
				displayMsg : '当前显示从第{from}条到{to}条 共{total}条记录',
			});
		},
		obj : {
			editRow : {
				currentRow : -1
			},
			doAction : function(e) {
				YINHE.doHandle(Category,e);
			},
			search : function() {
				Category.table.datagrid('load', {
					fname : $('#categorySearch').val()
				});
			},

		}
	}
	Category.inittable();
});