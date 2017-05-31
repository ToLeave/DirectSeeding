<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:260px;left:156px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="newData" idColumn="fID" onCustomRefresh="newDataCustomRefresh"> 
      <column label="id" name="fID" type="String" xid="xid10"></column>
  <column label="标题" name="title" type="String" xid="xid1"></column>
  <column label="内容" name="content" type="String" xid="xid2"></column>
  <column label="时间" name="time" type="String" xid="xid4"></column>
  <column label="追加评论" name="addReply" type="String" xid="xid5"></column>
  <column label="用户头像" name="image" type="String" xid="xid6"></column>
  <data xid="default1">[]</data></div>  
    </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-content" xid="content3" style="background-color:#f2f2f2;"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            active="0" xid="contents1"> 
            <div class="x-contents-content" xid="content2"> 
               
            <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" hScroll="false">
   <div class="x-content-center x-pull-down container" xid="div3">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span6">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div4"><div xid="div11" style="border-bottom:#ccc 1px solid;"></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="newData">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li3">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col x-col-20" xid="col5">
       <img src="$UI/DirectSeeding/img/消息头像.jpg" alt="" xid="image1" style="width:60%;" class="center-block"></img></div> 
      <div class="x-col" xid="col12">
       <label xid="label1" bind-text='val("time")'></label>
       <label xid="label2" bind-text='val("title")'></label><div xid="div7" bind-text=' val("content")'></div>
       </div> </div> 
     <div xid="div10" style="border-bottom:#ccc 1px solid;"></div></li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div5">
    <span class="x-pull-up-label" xid="span7">加载更多...</span></div> </div></div>  
            </div> 
        </div> 
      </div> 
    </div>  
    </div> 
</div>