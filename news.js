define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
		var url = "http://192.168.17.100:9292"
		
	var Model = function(){
		this.callParent();
	};
	
	
//	//图片路径转换
//	Model.prototype.toUrl = function(row){
//		return require.toUrl(row.val("img"));	
//	};
//	
//	Model.prototype.getImageUrl = function(url){
//		return require.toUrl(url);
//	};
	
	Model.prototype.newDataCustomRefresh = function(event){
var newData=this.comp("newData")
		newData.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/information?",
			"newData" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{

			newData.add({
			id:xhr[i].id,
			title:xhr[i].title,
			content:xhr[i].content,
			time:xhr[i].created_at.substring(0,10),
		//	image:"./img/用户头像.jpg"

			});
			
			}
			
			}
			});


	};
	return Model;
});