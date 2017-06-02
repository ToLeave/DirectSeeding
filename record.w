<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:192px;left:178px;"
     onLoad="modelLoad" onunLoad="modelUnLoad">A 
    <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh">
   <column label="id" name="id" type="String" xid="default6"></column>
   <column label="店铺ID" name="fShopID" type="String" xid="xid3"></column>
   <column label="标题" name="fTitle" type="String" xid="xid6"></column>
   <column label="图片" name="fImg" type="String" xid="xid7"></column>
   <column label="价格" name="fPrice" type="Float" xid="xid8"></column>
   <column label="邮费" name="fPostage" type="String" xid="xid9"></column>
   <column label="月销量" name="fRecord" type="Integer" xid="xid10"></column></div>
</div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-top" height="48" xid="top"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="购买记录" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-chevron-left" xid="i1"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1">购买记录</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>  
    <div xid="content" class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="pages"  wrap="true" swipe="false" slidable="false"> 
        <div class="x-contents-content" xid="oneColList"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div5"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>  
              <span class="x-pull-down-label" xid="span15">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div6"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="list1" data="goodsData" limit="6" bind-click="listClick"> 
                <ul class="x-list-template" xid="listTemplateUl1"> 
                  <li xid="li1" class="media"> 
                    <div xid="div10" class="media-left"> 
                      <img alt="" xid="image1" class="img-rounded media-object"
                        bind-attr-src="$model.getImageUrl(val(&quot;fImg&quot;))" style="width:75px;"
                        height="80px"/> 
                    </div>  
                    <div class="media-body" xid="div14"> 
                      <h5 class="media-heading lead text-black" bind-text="ref('fTitle')"
                        xid="h51"/>  
                      <div class="text-muted" xid="div15"> 
                        <span xid="span11" class="text-danger">￥</span>  
                        <span xid="span9" bind-text="ref('fPrice')" class="text-danger"/> 
                      </div>  
                      <div class="text-muted" xid="div16"> 
                        <span xid="span30">月销</span>  
                        <span xid="span21" bind-text="ref('fRecord')"/>  
                        <span xid="span22"><![CDATA[笔 ]]></span>  
                        <span xid="span20" bind-text=" ref('fPostage')"/> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div>
            </div>  
            <div class="x-content-center x-pull-up" xid="div7"> 
              <span class="x-pull-up-label" xid="span16">加载更多...</span> 
            </div> 
          </div> 
        </div>  
        </div> 
    </div> 
  </div> 
</div>