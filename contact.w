<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:538px;left:483px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dizhiData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="公司名称" name="definition" type="String" xid="xid10"></column>
  <column label="公司地址" name="address" type="String" xid="xid11"></column>
  <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;definition&quot;:&quot;中水系信息科技有限公司&quot;,&quot;address&quot;:&quot;玉溪市红塔区彩虹路XX号&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;definition&quot;:&quot;中水系通海分公司&quot;,&quot;address&quot;:&quot;通海县XXXX&quot;}]</data></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dianhuadata" idColumn="id">
   <column label="id" name="id" type="String" xid="column1"></column>
  <column label="电话联系人姓名" name="name_p" type="String" xid="column2"></column>
  <column label="联系电话" name="phone" type="String" xid="column3"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;name_p&quot;:&quot;张先生&quot;,&quot;phone&quot;:&quot;135XXXXXXXX&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name_p&quot;:&quot;李小姐&quot;,&quot;phone&quot;:&quot;135XXXXXXXX&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="youxiangdata" idColumn="id">
   <column label="id" name="id" type="String" xid="column10"></column>
  <column label="邮箱联系人姓名" name="name_e" type="String" xid="column13"></column>
  <column label="联系邮箱" name="email" type="String" xid="column14"></column>
  <data xid="default2">[{&quot;id&quot;:&quot;1&quot;,&quot;name_e&quot;:&quot;张先生&quot;,&quot;email&quot;:&quot;XXXXX@qq.com&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;name_e&quot;:&quot;里小姐&quot;,&quot;email&quot;:&quot;XXXXX@qq.com&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="qitadata" idColumn="id">
   <column label="id" name="id" type="String" xid="column19"></column>
  <column label="联系方式名" name="title" type="String" xid="column24"></column>
  <column label="联系内容" name="content" type="String" xid="column25"></column>
  <data xid="default4">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;QQ&quot;,&quot;content&quot;:&quot;123456789&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;微信公众号&quot;,&quot;content&quot;:&quot;ASDASD&quot;}]</data></div></div>  
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
    
    
    
    
    <img src="" alt="" xid="image1" bind-attr-src=' $model.toUrl("./img/2.jpg")' style="width:100%;"></img>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="【公司地址】" xid="controlGroup2">
   <div class="x-control-group-title" xid="controlGroupTitle2">
    <span xid="span2" style="font-size:18px;">title</span></div> 
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="dizhiData">
    <ul class="x-list-template" xid="listTemplateUl2">
     <li xid="li2">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
       <div class="x-col x-col-fixed" xid="col1" style="width:auto;">
        <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output8" bind-ref='ref("definition")'></div></div> 
       <div class="x-col" xid="col2">
        <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output2" bind-ref='ref("address")'></div></div> </div> </li> </ul> </div> </div>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup4" style="margin-bottom: 20px;" title="【联系方式】">
   <div class="x-control-group-title" xid="controlGroupTitle4">
    <span xid="span4" style="font-size:18px;"></span></div> 
   <div xid="div2" style="margin-top:10px;font-size:16px;margin-left:10px;text-decoration:none;font-weight:bold;">联系电话</div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="dianhuadata">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
      <div class="x-col x-col-fixed" xid="col4" style="width:auto;">
       <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output4" bind-ref='ref("name_p")'></div></div> 
      <div class="x-col" xid="col3">
       <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output1" bind-ref='ref("phone")'></div></div> </div> </li> </ul> </div>
  <div xid="div3" style="margin-top:10px;font-size:16px;margin-left:10px;font-weight:bold;">联系邮箱</div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="youxiangdata">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
      <div class="x-col x-col-fixed" xid="col5" style="width:auto;">
       <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output6" bind-ref='ref("name_e")'></div></div> 
      <div class="x-col" xid="col6">
       <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output3" bind-ref='ref("email")'></div></div> </div> </li> </ul> </div>
  <div xid="div5" style="margin-top:10px;font-size:16px;margin-left:10px;font-weight:bold;">其他联系方式
  </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="qitadata">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li5">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
      <div class="x-col x-col-fixed" xid="col10" style="width:auto;">
       <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output7" bind-ref='ref("title")'></div></div> 
      <div class="x-col" xid="col9">
       <div component="$UI/system/components/justep/output/output" style="margin-top:-8px;font-size:16px;" class="x-output" xid="output5" bind-ref='ref("content")'></div></div> </div> </li> </ul> </div></div></div> </div></div>