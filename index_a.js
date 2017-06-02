define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var url = "http://192.168.17.103:9292";
	var Model = function(){
		this.callParent();
		this.zhuanlanid="";
	};

	Model.prototype.timeDataCustomRefresh = function(event){
//		var url = require.toUrl("./json/time.json");
//		allData.loadDataFromFile(url, event.source, true);
		var timedata=this.comp("timeData");
		timedata.clear();
       $.ajax({
			"type" : "post",
			"dataType" : "jsonp",
			"async" : false,
			
			"url" : url+"/mobiles/shipanzhibo?mianfeiid="+this.params.zhuanlanid,
			"timeData" : {
				"action" : "",
			},
			"success": function(xhr) {

			for(var i=0;i<xhr.length;i++)
			{


			timedata.add({
			id:xhr[i].id,
			content:xhr[i].content,
			time:xhr[i].created_at.substring(11,19),
			data:xhr[i].created_at.substring(0,10)

			});
			
			}
			
			}
			});
//						event.options.index = 0;
	};
	
	Model.prototype.changeColor = function(id) {

    var a = String(id);
	if(a.length > 1){
	a = a.slice(-1);
			}
		
				if(a == "0"){
					return "#FF0000";
				}
				else if(a == "1"){
					return "#FF7F00";
				}
				else if(a == "2"){
					return "#FFFF00";
				}
				else if(a == "3"){
					return "#00FF00";
				}
				else if(a == "4"){
					return "#00FFFF";
				}
				else if(a == "5"){
					return "#0000FF";
				}
				else if(a == "6"){
					return "#8B00FF";
				}
				else if(a == "7"){
					return "#D4D4D4";
				}
				else if(a == "8"){
					return "#FF3E96";
				}
				else if(a == "9"){
					return "#080808";
				}
//		if(id == 1){
//			return "#008080";
//		}else if(id == 2){
//			return "#FF8040";
//		}else if(id == 3){
//			return "#FF0080";
//		}
		else{
			return "#C0C0C0";
		}

	};
	
 
var timer =60;
var Countdown = function() {
    if (timer >= 1) {
        timer -= 1;
        setTimeout(function() {
            Countdown();
        }, 1000);
        $('.span4').text(timer);
          }
    else{
    timer=60;
  
 
    
    }
    
};

Model.prototype.modelLoad = function(event){
Countdown();


	};


	Model.prototype.timer2Timer = function(event){
	var timedata=this.comp("timeData");
    timedata.refreshData();
   
      Countdown();
	};









	return Model;
});