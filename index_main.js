define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var url = "http://192.168.17.103:9292"
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.getimgurl = function(imgurl,id,imgname) {
		return url+"/"+imgurl+"/"+id+"/"+imgname;

	};

	Model.prototype.zhuanlanDataCustomRefresh = function(event){
			var zhuanlandata=this.comp("zhuanlanData")
		zhuanlandata.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/zhuanlan?",
			"zhuanlandata" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{
//alert(xhr[i].id)
			zhuanlandata.add({
			id:xhr[i].id,
			title:xhr[i].title,
			img:xhr[i].image_file_name,
			remark:xhr[i].remark,
			price:xhr[i].price

			});
			
			}
			
			}
			});

	};
//	Model.prototype.bookCityBtnClick = function(event){
//   justep.Shell.showPage("news");
//
//
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


	Model.prototype.detailClick = function(event){

var row = event.bindingContext.$object;
//alert(row.val('id'))
// $.ajax({
//			"type" : "post",
//			"dataType" : "jsonp",
//			"async" : false,
//			
//			"url" : url+"/mobiles/buy?userid=1&zhuanlanid="+row.val('id'),
//			"newData" : {
//				"action" : "",
//			},
//			"success": function(xhr) {
//			if(xhr[0].status==1)
//			{
//			alert("订阅成功！！")
//			}
//			}
//			});




	};




	return Model;
});