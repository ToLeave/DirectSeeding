<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:282px;left:189px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="zhuanlanData" idColumn="id" onCustomRefresh="zhuanlanDataCustomRefresh">
   <column label="id" name="id" type="String" xid="xid1"></column>
   <column label="标题" name="title" type="String" xid="xid2"></column>
   <column label="图片" name="img" type="String" xid="xid3"></column>
   <column label="直播简介" name="remark" type="String" xid="xid4"></column>
   <column label="价格" name="price" type="Double" xid="xid5"></column>
   <rule xid="rule1">
    <col name="fPostNumber" xid="ruleCol1">
     <calculate xid="calculate1">
      <expr xid="default4">$row.val(&quot;fPostNumber&quot;)&gt;=0?$row.val(&quot;fPostNumber&quot;)+&quot;跟贴&quot;:&quot;&quot;;</expr></calculate> </col> </rule> </div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="专栏订阅"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
  <div class="x-panel-content x-cards panel-body" xid="content2">
   <div class="h6" xid="div2" style="top:0px;left:0px;">
    <img alt="" class="img-responsive" bind-attr-src='$model.getimgurl("images", $model.zhuanlanData.val("id"), $model.zhuanlanData.val("img"))' xid="image1"></img></div> 
   <div class="text-black lead" xid="div3" bind-text=' $model.zhuanlanData.ref("remark")'>
  
    <br xid="default1"></br>
    <br xid="default2"></br>
    <br xid="default3"></br></div> 
   
   
   </div>
  <div class="x-panel-bottom" xid="bottom1">
  <button xid="button2" style="height:100%;width:100%;" class="btn btn-default"><![CDATA[]]><span xid="span1"><![CDATA[订阅专栏：￥]]></span><span xid="span2" bind-text='$model.zhuanlanData.ref("price")'></span></button>
  </div></div> 
</div>