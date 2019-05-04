$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'order/good/list',
        datatype: "json",
        colModel: [			
			{ label: 'goodId', name: 'goodId', index: 'good_id', width: 50, key: true },
			{ label: '商品名', name: 'goodName', index: 'good_name', width: 80 }, 			
			{ label: '商品价格', name: 'goodPrice', index: 'good_price', width: 80 }, 			
			{ label: '商品描述', name: 'goodDec', index: 'good_dec', width: 80 }, 			
			{ label: '商品销售数量', name: 'goodSellCount', index: 'good_sell_count', width: 80 }, 			
			{ label: '商品评论数', name: 'goodRating', index: 'good_rating', width: 80 }, 			
			{ label: '商品信息', name: 'goodInfo', index: 'good_info', width: 80 }, 			
			{ label: '商品icon', name: 'goodIcon', index: 'good_icon', width: 80 }, 			
			{ label: '商品大图', name: 'goodImage', index: 'good_image', width: 80 }			
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		good: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.good = {};
		},
		update: function (event) {
			var goodId = getSelectedRow();
			if(goodId == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(goodId)
		},
		saveOrUpdate: function (event) {
		    $('#btnSaveOrUpdate').button('loading').delay(1000).queue(function() {
                var url = vm.good.goodId == null ? "order/good/save" : "order/good/update";
                $.ajax({
                    type: "POST",
                    url: baseURL + url,
                    contentType: "application/json",
                    data: JSON.stringify(vm.good),
                    success: function(r){
                        if(r.code === 0){
                             layer.msg("操作成功", {icon: 1});
                             vm.reload();
                             $('#btnSaveOrUpdate').button('reset');
                             $('#btnSaveOrUpdate').dequeue();
                        }else{
                            layer.alert(r.msg);
                            $('#btnSaveOrUpdate').button('reset');
                            $('#btnSaveOrUpdate').dequeue();
                        }
                    }
                });
			});
		},
		del: function (event) {
			var goodIds = getSelectedRows();
			if(goodIds == null){
				return ;
			}
			var lock = false;
            layer.confirm('确定要删除选中的记录？', {
                btn: ['确定','取消'] //按钮
            }, function(){
               if(!lock) {
                    lock = true;
		            $.ajax({
                        type: "POST",
                        url: baseURL + "order/good/delete",
                        contentType: "application/json",
                        data: JSON.stringify(goodIds),
                        success: function(r){
                            if(r.code == 0){
                                layer.msg("操作成功", {icon: 1});
                                $("#jqGrid").trigger("reloadGrid");
                            }else{
                                layer.alert(r.msg);
                            }
                        }
				    });
			    }
             }, function(){
             });
		},
		getInfo: function(goodId){
			$.get(baseURL + "order/good/info/"+goodId, function(r){
                vm.good = r.good;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{ 
                page:page
            }).trigger("reloadGrid");
		}
	}
});