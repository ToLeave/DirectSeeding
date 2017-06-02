<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:153px;top:61px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="processData" idColumn="pro"> 
      <column label="流程" name="pro" type="String" xid="xid1"/>  
      <data xid="default1">[{"pro":"1、起步CEO致辞开始"},{"pro":"2、起步市场总监介绍"},{"pro":"3、起步技术总监介绍"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="timeData" idColumn="name"> 
      <column label="时间" name="name" type="String" xid="xid2"/>  
      <column label="内容" name="content" type="String" xid="xid3"/>  
      <data xid="default2">[{"name":"活动时间：","content":"2015-1-25 9：00-11：00"},{"name":"活动地点：","content":"北京起步科技有限公司"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="userData" idColumn="title"> 
      <column label="标题" name="title" type="String" xid="xid4"/>  
      <column label="内容" name="content" type="String" xid="xid5"/>  
      <data xid="default3">[{"title":"你的姓名*"},{"title":"E-mail*"},{"title":"联系电话*"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1" style="background-color:#F2F2F2;">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="返回" xid="backBtn" icon="icon-chevron-left">
       <i xid="i2" class="icon-chevron-left"></i>
       <span xid="span1">返回</span></a> </div> 
     <div class="x-titlebar-title" xid="title1">
      <span xid="span1"><![CDATA[联系我们]]></span></div> 
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1">
    
    
    
    
    <img src="" alt="" xid="image1" bind-attr-src='$model.toUrl("./img/1.jpg")' style="width:100%;"></img>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="【公司地址】" xid="controlGroup2">
   <div class="x-control-group-title" xid="controlGroupTitle2">
    <span xid="span2" style="font-size:18px;">title</span></div> 
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="timeData">
    <ul class="x-list-template" xid="listTemplateUl2">
     <li xid="li2">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
       <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
        <label xid="label1" bind-text="ref('name')" style="font-size:16px;">label</label></div> 
       <div class="x-col" xid="col2">
        <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output2" bind-ref="ref('content')"></div></div> </div> </li> </ul> </div> </div>
  <img src="" alt="" xid="image2" bind-attr-src=' $model.toUrl("./img/2.jpg")' style="width:100%;"></img>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup4" style="margin-bottom: 20px;" title="【联系方式】">
   <div class="x-control-group-title" xid="controlGroupTitle4">
    <span xid="span4" style="font-size:18px;">活动负责人：XXX</span></div> 
   <div xid="div2" style="margin-top:10px;font-size:16px;margin-left:10px;">手机：XXXXXXXXX</div>
   <div xid="div3" style="margin-top:10px;font-size:16px;margin-left:10px;">邮箱：XXXXXXXXX</div>
   </div></div> </div></div>