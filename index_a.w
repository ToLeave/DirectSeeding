<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:269px;left:438px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="timeData" idColumn="id" onCustomRefresh="timeDataCustomRefresh">
   <column name="title" type="String" xid="xid1"></column>
  <column label="内容" name="content" type="String" xid="xid2"></column>
  <column label="时间" name="time" type="String" xid="xid3"></column>
  <column name="id" type="String" xid="xid4"></column>
  <data xid="default1">[{&quot;title&quot;:&quot;111&quot;,&quot;content&quot;:&quot;111111&quot;,&quot;time&quot;:&quot;11111&quot;,&quot;id&quot;:&quot;1&quot;},{&quot;title&quot;:&quot;222&quot;,&quot;content&quot;:&quot;2222222&quot;,&quot;time&quot;:&quot;22222&quot;,&quot;id&quot;:&quot;2&quot;}]</data>
  <column label="日期" name="data" type="String" xid="xid5"></column></div></div> 
<span component="$UI/system/components/justep/timer/timer" xid="timer2" onTimer="timer2Timer" interval="60000"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">
    <span xid="span1"><![CDATA[股神直播]]></span></div> 
   <div class="x-titlebar-right reverse" xid="right1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="目录" xid="menuBtn" icon="icon-compose">
     <i xid="i1" class="icon-compose"></i>
     <span xid="span2">目录</span></a> 
    <i xid="i2"></i></div> </div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C6FB78EFFFC00001CA6F1FE07CB01429" style="bottom: 54px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
    
   <div class="x-content-center x-pull-down container" xid="div1">
   <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i8"></i>
   <span class="x-pull-down-label" xid="span15">下拉刷新...</span></div><div xid="div5"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='$model.timeData.ref("data")'></div></div>
   <div class="x-col" xid="col6"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label4"><![CDATA[还有]]></label>
   <span xid="span4" class="span4"><![CDATA[]]></span><div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" style="width:152px;"></div></div></div>
   <div class="x-col" xid="col8"></div></div></div><div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-list-padding" xid="list1" data="timeData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div4" class="timeline"><div xid="div6" class="time"><span xid="span3" bind-style='{"color": $model.changeColor( $object.val("id"))}' bind-text='ref("time")'><![CDATA[]]></span></div><div xid="div3" class="timeline-image" bind-style='{"background-color": $model.changeColor( $object.val("id"))}'></div>
  <div component="$UI/system/components/justep/row/row" class="x-row timeline-content" xid="row2">
   <div class="x-col" xid="col4"><span xid="span14" style="font-weight:bold;" bind-text="ref('content')"><![CDATA[]]></span>
  <p xid="p1" style="font-size:x-small;"><![CDATA[]]></p></div>
   </div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div7">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> 
  </div></div>
   <div class="x-panel-bottom" xid="bottom1" height="54"><div component="$UI/system/components/justep/row/row" class="x-row text-center" xid="row1">
   <div class="x-col" xid="col1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-icon-left" label="实盘直播" xid="bookshelvesBtn" icon="linear linear-textalignjustify">
     <i xid="i5" class="linear linear-textalignjustify"></i>
     <span xid="span7">实盘直播</span></a> </div> 
   <div class="x-col" xid="col3">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-icon-left" label="华山论剑" xid="personalCenterBtn" icon="linear linear-chevronup">
     <i xid="i7" class="linear linear-chevronup"></i>
     <span xid="span9">华山论剑</span></a> </div> </div></div></div></div>