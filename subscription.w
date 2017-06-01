<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:282px;left:189px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">标题</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
  <div class="x-panel-content x-cards panel-body" xid="content2">
   <h3 class=" text-black" xid="h31"></h3>
   
   <div class="h6" xid="div2" style="width:1032px;">
    <img alt="" class="img-responsive" bind-attr-src="$model.getImageUrl('./img/4.jpg')" xid="image1"></img></div> 
   <div class="text-black lead" xid="div3">
    <br xid="default1"></br>
    <br xid="default2"></br>
    <br xid="default3"></br></div> 
   
   
   </div>
  </div> 
</div>