define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/timer/timer');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/DirectSeeding/index_a'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cYRb6Zz';
	this._flag_='085a74138f4c84bb34d2cd4ff61ccdc9';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"data":{"define":"data","label":"日期","name":"data","relation":"data","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"time":{"define":"time","label":"时间","name":"time","relation":"time","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"timeDataCustomRefresh"},"idColumn":"id","initData":"[{\"title\":\"111\",\"content\":\"111111\",\"time\":\"11111\",\"id\":\"1\"},{\"title\":\"222\",\"content\":\"2222222\",\"time\":\"22222\",\"id\":\"2\"}]","limit":20,"xid":"timeData"});
}}); 
return __result;});