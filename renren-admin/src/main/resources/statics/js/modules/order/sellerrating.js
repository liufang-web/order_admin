$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'order/sellerrating/list',
        datatype: "json",
        colModel: [			
			{ label: 'rantingId', name: 'rantingId', index: 'ranting_id', width: 50, key: true },
			{ label: '商家id', name: 'sellerId', index: 'seller_id', width: 80 }, 			
			{ label: '用户名', name: 'username', index: 'username', width: 80 }, 			
			{ label: '评论时间', name: 'rateTime', index: 'rate_time', width: 80 }, 			
			{ label: '耗时', name: 'deliveryTime', index: 'delivery_time', width: 80 }, 			
			{ label: '评分', name: 'score', index: 'score', width: 80 }, 			
			{ label: '评论类型', name: 'rateType', index: 'rate_type', width: 80 }, 			
			{ label: '评论内容', name: 'rantingContent', index: 'ranting_content', width: 80 }, 			
			{ label: '推荐内容', name: 'recommend', index: 'recommend', width: 80 }			
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
		sellerRating: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.sellerRating = {};
		},
		update: function (event) {
			var rantingId = getSelectedRow();
			if(rantingId == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(rantingId)
		},
		saveOrUpdate: function (event) {
		    $('#btnSaveOrUpdate').button('loading').delay(1000).queue(function() {
                var url = vm.sellerRating.rantingId == null ? "order/sellerrating/save" : "order/sellerrating/update";
                $.ajax({
                    type: "POST",
                    url: baseURL + url,
                    contentType: "application/json",
                    data: JSON.stringify(vm.sellerRating),
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
			var rantingIds = getSelectedRows();
			if(rantingIds == null){
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
                        url: baseURL + "order/sellerrating/delete",
                        contentType: "application/json",
                        data: JSON.stringify(rantingIds),
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
		getInfo: function(rantingId){
			$.get(baseURL + "order/sellerrating/info/"+rantingId, function(r){
                vm.sellerRating = r.sellerRating;
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