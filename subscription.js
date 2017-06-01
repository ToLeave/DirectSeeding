define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var url = "http://192.168.17.103:9292"
	var Model = function(){
		this.callParent();
		this.zhuanlanid="";
		this.title ="";
		this.img="";
		this.remark="";
		this.price="";
	};

	//图片路径转换
	Model.prototype.getimgurl = function(imgurl,id,imgname) {
		return url+"/"+imgurl+"/"+id+"/"+imgname;

	};

	Model.prototype.zhuanlanDataCustomRefresh = function(event){
		var zhuanlandata=this.comp("zhuanlanData")
		zhuanlandata.add({
		id:this.params.zhuanlanid,
		title:this.params.title,
		img:this.params.img,
		remark:this.params.remark,
		price:this.params.price


})

	};

	Model.prototype.modelParamsReceive = function(event){
//        this.zhuanlanid=this.params.zhaunlanid;
//		this.title =this.params.title;
//		this.img=this.params.img;
//		this.remark=this.params.remark;
//		this.price=this.params.price;

      
	};

	return Model;
});