define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
		var url = "http://192.168.17.103:9292";
		
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.toUrl = function(url){
		return url ? require.toUrl(url) : "";	
	};
	
	Model.prototype.dizhiDataBeforeRefresh = function(event){
var dizhidata=this.comp("dizhiData");
		dizhidata.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/lianxi",
			"dizhidata" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{
			dizhidata.add({
			id:xhr[i].id,
			definition:xhr[i].name,
			address:xhr[i].companyaddre,

			});
			
			}
			
			}
			});
	};
	
	Model.prototype.dianhuadataBeforeRefresh = function(event){
var dianhuadata=this.comp("dianhuaData");
		dianhuadata.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/lianxidianhua",
			"dianhuadata" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{
			dianhuadata.add({
			id:xhr[i].id,
			name_p:xhr[i].name,
			phone:xhr[i].phone,
			});
			
			}
			
			}
			});
	};
	

	
	Model.prototype.youxiangdataCustomRefresh = function(event){
var youxiangdata=this.comp("youxiangData");
		youxiangdata.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/lianxiyouxiang",
			"youxiangdata" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{
			youxiangdata.add({
			id:xhr[i].id,
			name_e:xhr[i].name,
			email:xhr[i].email,

			});
			
			}
			
			}
			});
	};
	

	
	Model.prototype.qitadataCustomRefresh = function(event){
var qitadata=this.comp("qitaData");
		qitadata.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/qitalianxi",
			"zhuanlandata" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{
			qitadata.add({
			id:xhr[i].id,
			title:xhr[i].title,
			content:xhr[i].content,


			});
			
			}
			
			}
			});
	};
	

	
	return Model;
});