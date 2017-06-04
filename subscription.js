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

	Model.prototype.button2Click = function(event){
$.ajax({
async : false,
url : url + "wxpayments/information",
type : "GET",
dataType : 'jsonp',
jsonp : 'callback',
timeout : 5000,
data : {
fee : productpricesum,
price : productprice,
openid : openid,
ordersn : ordersn,
name : name,
number : productnumber,
remark : remark,
productid : productid,
address : address,
busineid : busineid,
phone : phone

},
success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
// alert($(self.getElementByXid("ordernumberSpan")).text());
// alert(jsonstr.toString());

// alert("err"+openid);
wx.config({
debug : false,
appId : jsonstr.sign_packge.appId,
url : jsonstr.sign_packge.url,
timestamp : jsonstr.sign_packge.timestamp,
nonceStr : jsonstr.sign_packge.nonceStr,
signature : jsonstr.sign_packge.signature,
jsApiList : [ 'chooseWXPay' ]
});

var wxtimestamp = jsonstr.pay_ticket_param.timeStamp;
var wxnonceStr = jsonstr.pay_ticket_param.nonceStr;
var wxpackage = jsonstr.pay_ticket_param.package;
var wxsignType = jsonstr.pay_ticket_param.signType;
var wxpaySign = jsonstr.pay_ticket_param.paySign;
// alert(wxpackage);
wx.ready(function() {

window.weixin_ready = true;
wx.chooseWXPay({
timestamp : jsonstr.pay_ticket_param.timeStamp, // 支付签名时间戳，注意微信jssdk中的所有使用timestamp字段均为小写。但最新版的支付后台生成签名使用的timeStamp字段名需大写其中的S字符
nonceStr : jsonstr.pay_ticket_param.nonceStr, // 支付签名随机串，不长于
// 32 位
package : jsonstr.pay_ticket_param.package, // 统一支付接口返回的prepay_id参数值，提交格式如：prepay_id=***
signType : jsonstr.pay_ticket_param.signType, // 签名方式，默认为"SHA1"，使用新版支付需传入"MD5"
paySign : jsonstr.pay_ticket_param.paySign, // 支付签名
success : function(res) {
// 支付成功后的回调函数
alert("支付成功");
}
});
});

wx.error(function() {
window.weixin_ready = false;
});

},
error : function(xhr) {
// alert(xhr);
// justep.Util.hint("错误，请检查网络");
}
});
	};

	return Model;
});