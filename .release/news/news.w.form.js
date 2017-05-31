define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/DirectSeeding/news'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cjeqUba';
	this._flag_='5cee1245909dde5936676be5bf1cf062';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addReply":{"define":"addReply","label":"追加评论","name":"addReply","relation":"addReply","type":"String"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"image":{"define":"image","label":"用户头像","name":"image","relation":"image","type":"String"},"time":{"define":"time","label":"时间","name":"time","relation":"time","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"newDataCustomRefresh"},"idColumn":"fID","initData":"[]","limit":20,"xid":"newData"});
}}); 
return __result;});