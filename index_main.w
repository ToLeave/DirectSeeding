<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:356px;left:311px;">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zhuanlanData" idColumn="id" onCustomRefresh="zhuanlanDataCustomRefresh">
   <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="标题" name="title" type="String" xid="xid2"></column>
  <column label="图片" name="img" type="String" xid="xid3"></column>
  <column label="直播简介" name="remark" type="String" xid="xid4"></column>
  <column label="价格" name="price" type="Double" xid="xid5"></column>
  <rule xid="rule1">
   <col name="fPostNumber" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$row.val(&quot;fPostNumber&quot;)&gt;=0?$row.val(&quot;fPostNumber&quot;)+&quot;跟贴&quot;:&quot;&quot;;</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="newData" idColumn="fID" onCustomRefresh="newDataCustomRefresh">
   <column label="id" name="fID" type="String" xid="xid10"></column>
   <column label="标题" name="title" type="String" xid="column1"></column>
   <column label="内容" name="content" type="String" xid="column2"></column>
   <column label="时间" name="time" type="String" xid="column3"></column>
   <column label="追加评论" name="addReply" type="String" xid="column4"></column>
   <column label="用户头像" name="image" type="String" xid="xid6"></column>
   <data xid="default2">[]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="id">
   <column label="id" name="id" type="String" xid="default3"></column>
   <column label="昵称" name="nicheng" type="String" xid="default4"></column>
   <column label="头像" name="touxiang" type="String" xid="default5"></column>
   <column label="性别" name="xingbie" type="String" xid="default6"></column>
   <column label="生日" name="shengri" type="String" xid="default7"></column>
   <column label="真实姓名" name="name" type="String" xid="default8"></column>
   <column label="手机号" name="shouji" type="String" xid="xid7"></column>
   <column label="地址" name="dizhi" type="String" xid="xid8"></column>
   <column label="公司" name="gongsi" type="String" xid="xid9"></column>
   <column label="职位" name="zhiwei" type="String" xid="default9"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">
    <span xid="span1"><![CDATA[直播]]></span></div> 
   <div class="x-titlebar-right reverse" xid="right1">
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
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="list-group-item x-flex" bind-click="detailClick">
       <div xid="mediaLeft1" class="media-left">
        <a xid="a1">
         <img alt="" xid="image4" class="img-responsive img_new" bind-attr-src='$model.getimgurl("images",  val("id"),  val("img"))' height="50px" style="width:50px;"></img></a> </div> 
       <div class="x-flex1" xid="col26">
        <h5 class="o-nomargintop" xid="h51" bind-text='ref("title")'></h5>
        <span style="text-align: justify;" bind-text='ref("remark")' class="text-muted" xid="span36"></span>
        <span class="pull-right text-danger" xid="span4" bind-text='ref("price")'><![CDATA[]]></span><span class="pull-right text-danger" xid="span37"><![CDATA[￥]]></span>
  </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span10">加载更多...</span></div> </div></div> 
   <div class="x-contents-content  x-scroll-view" xid="newContent">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" hScroll="false">
   <div class="x-content-center x-pull-down container" xid="div3">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span6">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div4">
    <div xid="div11" style="border-bottom:#ccc 1px solid;"></div>
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="newData">
     <ul class="x-list-template" xid="listTemplateUl4">
      <li xid="li3">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
        <div class="x-col x-col-20" xid="col5">
         <img src="$UI/DirectSeeding/img/消息头像.jpg" alt="" xid="image1" style="width:60%;" class="center-block"></img></div> 
        <div class="x-col" xid="col12">
         <label xid="label1" bind-text='val("time")'></label>
         <label xid="label2" bind-text='val("title")'></label>
         <div xid="div1" bind-text=' val("content")'></div></div> </div> 
       <div xid="div10" style="border-bottom:#ccc 1px solid;"></div></li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div5">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div> 
   
   
   <div class="x-contents-content" xid="userContent">
    <div class="x-panel-content" xid="content1">
   
   <div class="text-center o-user" xid="div13">
    <img alt="" xid="image2" class="img1"></img>
    
    <div xid="div9" class="h5 text-white"></div></div> 
   
   <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel3">
    <div class="list-group-item" xid="geren_div" bind-click="geren_divClick">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button11" icon="icon-ios7-arrow-right">
      <i xid="i17" class="icon-ios7-arrow-right text-muted"></i>
      <span xid="span14"></span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-chatbox-working" xid="button2">
      <i xid="i9" class="icon-chatbox-working text-danger"></i>
      <span xid="span13"></span></a> 
     <span xid="span15"><![CDATA[个人信息]]></span></div> </div> 
   <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel4">
    <ul xid="ul1">
     <li class="list-group-item" xid="huodong_li" bind-click="huodong_liClick">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button12" icon="icon-ios7-arrow-right">
       <i xid="i18" class="icon-ios7-arrow-right text-muted"></i>
       <span xid="span17"></span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-bag" xid="button13">
       <i xid="i26" class="icon-bag text-warning"></i>
       <span xid="span18"></span></a> 
      <span xid="span16"><![CDATA[我的活动]]></span></li> 
     <li class="list-group-item" xid="jilu_li" bind-click="jilu_liClick">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button14" icon="icon-ios7-arrow-right">
       <i xid="i27" class="icon-ios7-arrow-right text-muted"></i>
       <span xid="span20"></span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-clipboard" xid="button15">
       <i xid="i28" class="icon-clipboard"></i>
       <span xid="span21"></span></a> 
      <span xid="span19"><![CDATA[购买记录]]></span></li> 
     <li class="list-group-item" xid="lianxi_li" bind-click="lianxi_liClick">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button16" icon="icon-ios7-arrow-right">
       <i xid="i29" class="icon-ios7-arrow-right text-muted"></i>
       <span xid="span23"></span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-ios7-briefcase-outline" xid="button17">
       <i xid="i30" class="icon-ios7-briefcase-outline text-danger"></i>
       <span xid="span24"></span></a> 
      <span xid="span22"><![CDATA[联系我们]]></span></li> </ul> </div> 
   <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel5">
    <div class="list-group-item" xid="fankui_div" bind-click="fankui_divClick">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button18" icon="icon-ios7-arrow-right">
      <i xid="i31" class="icon-ios7-arrow-right text-muted"></i>
      <span xid="span26"></span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-email" xid="button19">
      <i xid="i32" class="icon-email text-success"></i>
      <span xid="span27"></span></a> 
     <span xid="span25"><![CDATA[意见反馈]]></span></div> </div> </div></div> </div></div>
   <div class="x-panel-bottom" xid="bottom1" height="54"><div component="$UI/system/components/justep/row/row" class="x-row text-center" xid="row1">
   <div class="x-col" xid="col1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top active" label="首页" xid="columnBtn" icon="linear linear-envelope" target="columnContent">
     <i xid="i5" class="linear linear-envelope"></i>
     <span xid="span7">首页</span></a> </div> 
   <div class="x-col" xid="col2">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="消息" xid="newBtn" icon="round round-safari" target="newContent">
     <i xid="i6" class="round round-safari"></i>
     <span xid="span8">消息</span>
  </a> 
  </div> 
   <div class="x-col" xid="col3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-top" label="个人中心" xid="userBtn" icon="icon-android-contact" target="userContent">
     <i xid="i7" class="icon-android-contact"></i>
     <span xid="span9">个人中心</span></a> </div> </div></div></div></div>