define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
    require("$UI/demo/misc/swiper/dist/swiper-3.4.2.min");
	require("css!$UI/demo/misc/swiper/dist/swiper-3.4.2.min").load();
	var swiper = new Swiper('.swiper-container', {
		pagination : '.swiper-pagination',
		slidesPerView : 'auto',
		paginationClickable : true,
		spaceBetween : 30
	});
	var url = "http://192.168.17.103:9292/";

	var deleteID = 0;// 回删附件标识 true未删
	var Model = function(){
		this.callParent();
		var fankuiid="";
	};

	Model.prototype.attchInputChange = function(event){
	
	var fankuiid=this.params.fankuiid;

	var self = this;
		var oFile = event.target.files[0];
		var imageFD = new FormData();
		imageFD.append("attch", oFile);
		imageFD.append("fankuiid", fankuiid);
		oXHR = new XMLHttpRequest();
		oXHR.onreadystatechange = mycallback;
		oXHR.open('POST', url + "mobiles/addlianxiwomen");
		oXHR.send(imageFD);
		function mycallback() {
			// alert(oXHR.responseText);
			if (oXHR.readyState == 4 && oXHR.status == 200) {
				// console.log(oXHR.readyState);
				// alert(swiper.slides.length);

				self.getAttchment();

			}
		}
		
	};


	Model.prototype.getAttchment = function() {

	var fankuiid=this.params.fankuiid;;

		var delarr = new Array();
		for (var i = 0; i < swiper.slides.length - 1; i++) {
			delarr[i] = i;
			// swiper.update();
		}
		// alert(delarr);
		swiper.removeSlide(delarr);

		$.ajax({
			async : false,
			url : url + "mobiles/getattch",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				fankuiid:fankuiid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				// useridready = jsonstr.userid;
				// var swiperMainDiv = $(self.getElementByXid("swiperMainDiv"));
				// var Button =
				// require("$UI/system/components/justepttontton");
				$.each(jsonstr, function(i, item) {
					// alert(item.id);
					var div = $("<div class='swiper-slide text-center' xid='d" + item.id + "' style=''><img height='220px' src=" + url.substring(0, url.length - 1) +"/attches/"+ item.id+"/"+item.attch_file_name
							+ "><button xid='"+item.id+"' class='btn delbtn btn-danger button-box' style='margin-left:-40px;margin-top:-180px;' value='" + item.id
							+ "'><i class='linear linear-fileadd'><tton></img></div>");
					swiper.prependSlide(div);
					$('.delbtn').click(function() {
						// alert(this.value);

						if (deleteID != this.value) {
							deleteID = this.value;
							//alert(deleteID);
							$.ajax({
								async : false,
								url : url + "mobiles/deleteattch",
								type : "GET",
								dataType : 'jsonp',
								jsonp : 'callback',
								data : {
									id : this.value
								},
								timeout : 5000,
								success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数

									// swiper.slideTo(0, 1000, false);
									// alert(swiper.activeIndex);
									// self.getAttchment();
									// alert(useridready);
								},
								error : function(xhr) {
									// justep.Util.hint("错误，请检查网络");
								}
							});
							swiper.removeSlide(swiper.activeIndex);
							swiper.slideTo(0, 1000, false);
						}

					});
					// var swiperdiv = $(self.getElementByXid("d" + item.id));
					// console.log(swiperdiv);
					// var Button =
					// require("$UI/system/components/justepttontton");
					// var buttonflag = {
					// xid : "b" + item.id,
					// 'class' : 'btn btn-danger btn-only-icon',
					// 'style' : 'margin-left:-40px;margin-top:-160px;',
					// 'icon' : 'linear linear-fileadd',
					// parentNode : swiperdiv
					// }
					// var button = new Button(buttonflag);

					// alert(item.id);
					
				});
				// swiper.update();
				swiper.slideTo(0, 1000, false);

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.fankuiDataCustomRefresh = function(event){
	
	var fankuidata=this.comp("fankuiData")
 $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			"fankuidata" : {
				"action" : "",
			},
			"url" : url+"/fankuis/findfankui",
			
			"success": function(xhr) {
			for(var i=0;i<xhr.length;i++)
			{
		//	alert(xhr[i].id)
			fankuidata.add({
			id:xhr[i].id
			})
			}
			}
			});


	};

	Model.prototype.submitBtnClick = function(event){
if(this.comp("suggestTextarea").val()!=null)
{
$.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/fankuis/editfankui",
			
			data:{
			fankuiid:this.params.fankuiid,
			question:this.comp("suggestTextarea").val(),
			email:this.comp("emailInput").val()
			},
			"success": function(xhr) {
			alert("感谢你的反馈和建议！")
		   }
			});

}
else{
alert("问题或建议不能为空！")
}


	};

	return Model;
});