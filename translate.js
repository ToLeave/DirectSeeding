define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var url = "http://192.168.17.103:9292";
	require("$UI/demo/misc/swiper/dist/swiper-3.4.2.min");
	require("css!$UI/demo/misc/swiper/dist/swiper-3.4.2.min").load();
	var swiper=new Swiper('.swiper-container',{
	pagination : '.swiper-container',
	slidesPerView :'auto',
	paginationClickable :true,
	spaceBetween : 30
	});
	var Model = function(){
		this.callParent();
	};

	Model.prototype.attchInputChange = function(event){
		var self=this;
		var oFile =event.target.files[0];
		var imageFD=new FormData();
		imageFD.append("attch",oFile);
		oXHR = new XMLHttpRequest();
		oXHR.onreadystatechange=mycallback;
		oXHR.open('post', url+"mobiles/addlianxiwomen");
		oXHR.send(imageFD);
		function mycallback(){
		if(oXHR.readyState==4&& oXHR.status==200){
		self.getAttchment();
		 }
		}
	};


	Model.prototype.getAttchment = function() {
//		var self = this;
//		var data = this.comp("userData");
//		var rows = data.getFirstRow();
//		var userid = 0;
//		if (rows != null) {
//			userid = data.val("id");
//		}
		var delarr = new Array();
		for (var i = 0; i < swiper.slides.length - 1; i++) {
			delarr[i] = i;
			// swiper.update();
		}
		// alert(delarr);
		swiper.removeSlide(delarr);

		$.ajax({
			async : false,
			url : url + "mobiles/getattchment",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				pactid : pactid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				// useridready = jsonstr.userid;
				// var swiperMainDiv = $(self.getElementByXid("swiperMainDiv"));
				// var Button =
				// require("$UI/system/components/justepttontton");
				$.each(jsonstr, function(i, item) {
					// alert(item.id);
					var div = $("<div class='swiper-slide text-center' xid='d" + item.id + "' style=''><img height='220px' src=" + url.substring(0, url.length - 1) + item.attchment
							+ "><button class='btn delbtn btn-danger button-box' style='margin-left:-40px;margin-top:-180px;' value='" + item.id
							+ "'><i class='linear linear-fileadd'><tton></img></div>");
					// button = $("");
					$('.delbtn').click(function() {
						// alert(this.value);

						if (deleteID != this.value) {
							deleteID = this.value;
							alert(deleteID);
							$.ajax({
								async : false,
								url : url + "apis/deleteattch",
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
					swiper.prependSlide(div);
				});
				// swiper.update();
				swiper.slideTo(0, 1000, false);

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	return Model;
});