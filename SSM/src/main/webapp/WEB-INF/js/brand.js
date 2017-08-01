var Brand;
$(function() {

	Brand = {
		name : 'brand',
		css1:'brandyinhe',
		css2:'brandCRUD',
		table : $("#brandTable"),
		inittable : function() {
			Brand.table
					.datagrid({
						width : '100%',
						title : '商品品牌',
						iconCls : 'icon-search',
						singleSelect : false,
						rownumbers : true,
						fitColumns : true,
						collapsible : true,
						pagination : true,
						url : '/brand/list',
						method : 'get',
						pageSize : 10,
						striped : true,
						pageList : [ 10, 20, 30, 40 ],
						toolbar : '#brandToolBar',
						columns : [ [
										{
											field:'',
											checkbox : true
										},
										{
											field : 'id',
											title:'code',
											width:10,
											align:'center',
											formatter: function(value,row,index){
												return (value+"").length==1 ? "0"+value : value;
											},
											/*editor: {
												type:'validatebox',
												options:{
													required:true,
													missingMessage:'需要填写',
													//invalidMessage:'信息无效',
													validateOnBlur:true,
													validType:['isNumber']
												}
											}*/
										},
										{
											field : 'fName',
											align : 'center',
											title : 'Full Name',
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
												if (value == 0) {
													return '<input type="checkbox" checked="true"  disabled="disabled">';
												} else {
													return '<input type="checkbox" disabled="disabled">';
												}
											},
											editor:{
												type:'checkbox',
												options:{  
											            on: "0",  
											            off: "1"  
											    } 
											}
										} ] ],
						onAfterEdit : function(index, row, changes) {
							YINHE.onAfterEditData(Brand, row);
						}
					});

			Brand.table.datagrid('getPager').pagination({ // 分页栏下方文字显示
				displayMsg : '当前显示从第{from}条到{to}条 共{total}条记录',
			});
		},
		obj : {
			editRow : {
				currentRow : -1
			},
			doAction : function(e) {
				YINHE.doHandle(Brand,e);
			},
			search : function() {
				Brand.table.datagrid('load', {
					fname : $('#brandSearch').val()
				});
			},

		}
	}
	Brand.inittable();
});