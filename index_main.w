<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:312px;top:368px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zhuanlanData" idColumn="id" onCustomRefresh="zhuanlanDataCustomRefresh">
   <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="标题" name="title" type="String" xid="xid2"></column>
  <column label="图片" name="img" type="String" xid="xid3"></column>
  <column label="直播简介" name="remark" type="String" xid="xid4"></column>
  <column label="价格" name="price" type="Double" xid="xid5"></column>
  <rule xid="rule1">
   <col name="fPostNumber" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$row.val(&quot;fPostNumber&quot;)&gt;=0?$row.val(&quot;fPostNumber&quot;)+&quot;跟贴&quot;:&quot;&quot;;</expr></calculate> </col> </rule></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">
    <span xid="span1"><![CDATA[股神直播]]></span></div> 
   <div class="x-titlebar-right reverse" xid="right1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="目录" xid="menuBtn" icon="icon-compose">
     <i xid="i1" class="icon-compose"></i>
     <span xid="span2">目录</span></a> 
    <i xid="i2"></i></div> </div></div>
   <div class="x-panel-content" xid="content" _xid="C6F5C7749DD00001559019B51AB0AE00" style="bottom: 54px;">
  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" wrap="false" swipe="false">
   <div class="x-contents-content  x-scroll-view" xid="columnContent" onactive="newsContentActive">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div6">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div7">
    <div xid="div18">
     <h5 class="panel-heading" xid="h52">直播专栏</h5></div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="zhuanlanData">
     <ul class="x-list-template" xid="listTemplateUl1" bind-click="detailClick">
      <li xid="li1" class="list-group-item x-flex">
       <div xid="mediaLeft1" class="media-left">
        <a xid="a1">
         <img alt="" xid="image4" class="img-responsive img_new" bind-attr-src='$model.getimgurl("images",  val("id"),  val("img"))' style="width:50px;" height="50px"></img></a> </div> 
       <div class="x-flex1" xid="col26">
        <h5 class="o-nomargintop" xid="h51" bind-text='ref("title")'></h5>
        <span style="text-align: justify;" bind-text='ref("remark")' class="text-muted" xid="span36"></span>
        <span class="pull-right" xid="span37" bind-text='ref("price")'></span></div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span10">加载更多...</span></div> </div></div> 
   <div class="x-contents-content" xid="newContent">
    <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mainContainer2" style="height:100%;width:100%;" src="$UI/DirectSeeding/news.w" autoLoad="false"></div></div> 
   
   
   <div class="x-contents-content" xid="userContent">
    <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mainContainer5" src="./index-user.w" autoLoad="false"></div></div> </div></div>
   <div class="x-panel-bottom" xid="bottom1" height="54"><div component="$UI/system/components/justep/row/row" class="x-row text-center" xid="row1">
   <div class="x-col" xid="col1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="首页" xid="columnBtn" icon="linear linear-envelope" target="columnContent">
     <i xid="i5" class="linear linear-envelope"></i>
     <span xid="span7">首页</span></a> </div> 
   <div class="x-col" xid="col2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="消息" xid="newBtn" icon="round round-safari" target="newContent">
     <i xid="i6" class="round round-safari"></i>
     <span xid="span8">消息</span></a> </div> 
   <div class="x-col" xid="col3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="个人中心" xid="userBtn" icon="icon-android-contact" target="userContent">
     <i xid="i7" class="icon-android-contact"></i>
     <span xid="span9">个人中心</span></a> </div> </div></div></div></div>