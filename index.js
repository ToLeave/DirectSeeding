define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require("$UI/system/lib/portal/shellImpl");
	
var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./index_main.w')
				},
				"news" : {
					url : require.toUrl('./news.w')
				},
				"index_a" : {
					url : require.toUrl('./index_a.w')
				},
					"userinformation" : {
					url : require.toUrl('./userinformation.w')
				},
//				"post" : {
//					url : require.toUrl('./post.w')
//				},
//				"login" : {
//					url : require.toUrl('./login.w')
//				},
//				"registeMobile" : {
//					url : require.toUrl('./registeMobile.w')
//				},
//				"registered" : {
//					url : require.toUrl('./registered.w')
//				},


			}
		});
	};

	return Model;
});