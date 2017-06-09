define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
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

	return Model;
});