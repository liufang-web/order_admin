$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'order/seller/list',
        datatype: "json",
        colModel: [			
			{ label: 'sellerId', name: 'sellerId', index: 'seller_id', width: 50, key: true },
			{ label: '商户名', name: 'name', index: 'name', width: 80 }, 			
			{ label: '商户描述', name: 'description', index: 'description', width: 80 }, 			
			{ label: '配送时间', name: 'deliveryTime', index: 'delivery_time', width: 80 }, 			
			{ label: '评分', name: 'score', index: 'score', width: 80 }, 			
			{ label: '服务评分', name: 'serviceScore', index: 'service_score', width: 80 }, 			
			{ label: '商品评分', name: 'foodScore', index: 'food_score', width: 80 }, 			
			{ label: '高于周边商家百分比', name: 'rankRate', index: 'rank_rate', width: 80 }, 			
			{ label: '最低价格', name: 'minPrice', index: 'min_price', width: 80 }, 			
			{ label: '配送费', name: 'deliveryPrice', index: 'delivery_price', width: 80 }, 			
			{ label: '评论数', name: 'ratingCount', index: 'rating_count', width: 80 }, 			
			{ label: '售卖数', name: 'sellCount', index: 'sell_count', width: 80 }, 			
			{ label: '描述', name: 'bulletin', index: 'bulletin', width: 80 }, 			
			{ label: '商家头像', name: 'avatar', index: 'avatar', width: 80 }, 			
			{ label: '商家简介', name: 'infos', index: 'infos', width: 80 }, 			
			{ label: '图片列表', name: 'pics', index: 'pics', width: 80 }			
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
		seller: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.seller = {};
		},
		update: function (event) {
			var sellerId = getSelectedRow();
			if(sellerId == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(sellerId)
		},
		saveOrUpdate: function (event) {
		    $('#btnSaveOrUpdate').button('loading').delay(1000).queue(function() {
                var url = vm.seller.sellerId == null ? "order/seller/save" : "order/seller/update";
                $.ajax({
                    type: "POST",
                    url: baseURL + url,
                    contentType: "application/json",
                    data: JSON.stringify(vm.seller),
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
			var sellerIds = getSelectedRows();
			if(sellerIds == null){
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
                        url: baseURL + "order/seller/delete",
                        contentType: "application/json",
                        data: JSON.stringify(sellerIds),
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
		getInfo: function(sellerId){
			$.get(baseURL + "order/seller/info/"+sellerId, function(r){
                vm.seller = r.seller;
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