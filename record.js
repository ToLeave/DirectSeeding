define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.keyValue = "";
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};



	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据 2、接收传入的参数，过滤数据
		 */
		var url = require.toUrl("./list/json/goodsData.json");
		var goodsData = event.source;
		goodsData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			goodsData.loadData(data);
		});
	};

	// 商品点击事件
	Model.prototype.listClick = function(event) {
		/*
		 *1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据		
 		 *显示页面代码如下：
		 *var data = this.comp("goodsData");
		 *justep.Shell.showPage("detail", {
		 *	goodsID : data.getValue("id"),
		 *	shopID : data.getValue("fShopID")
		 *});
		*/
	};


	Model.prototype.modelLoad = function(event) {
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
		var src = $("html").hasClass("iosstatusbar");
		if (src) {
			$(".x-popOver-overlay").css({
				"top" : "108px"
			});
		}
		/*
		 * 切换到缓存中保存的content
		 */
		var pagename = localStorage.getItem("list_style_name");
		if (pagename == null) {
			pagename = "oneColList";
		}
		this.comp("pages").to(pagename);
	};

	// 离开页面事件
	Model.prototype.modelUnLoad = function(event) {
		/*
		 * 将当前激活的content的Xid存入缓存
		 */
		localStorage.setItem("list_style_name", this.comp("pages").getActiveXid());
	};

	return Model;
});