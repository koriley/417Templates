<div style="background-color:#000; width:100%; height:25px;"></div>
<div class="logo"><a class="logo" href="{$publication.params.logolinkurl}" alt="{$publication.title}">
                        <!--<a class="logo" href="http://417mag.com/r5/" alt="{$publication.title}">-->
        <img src="{$publication.params.logopath}" alt="{$publication.title}" />
    </a></div>
<div style="background-color:#000; width:100%; height:3px;"></div>
<div class="container-fluid">
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">

                <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                <a class="btn btn-navbar" id="mobileButton" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>


                <div class="visible-desktop" id="stickyheader" style="background-color:white;">
                    {if $config.primary_nav_menu_id}

                        <div >{include file="menu-main.tpl"}</div>

                    {/if}
                </div>

            </div>
        </div>
    </div>
</div>
<div id="hiddenBar" class="hiddenBar hidden-phone" style=""></div>

<div class="nav-collapse collapse" id="mobileMenu">
       <div >{include file="menu-main.tpl"}</div>
      </div>



            
             {literal}
           <script>
               var realColor = 'black'; /*This is the normal color*/
               var hoverColor = '#40B3B2'; /*this is for hovering over*/
               var pageColor = '#40B3B2'; /*this is to let the userknow they are on the page*/
               screenSize = jQuery(window).width();
                    if(screenSize < 770){
                 sizeColor = 'black';
             } 
                 </script>
       {/literal}    
        
{*home page*}
{if $Page->tags[359]<>'' || $article.tags[359]<>''}
    
    <script>{literal}
         jQuery('.home span').css({color: pageColor});
             jQuery(".home span").hover(function(){
                jQuery(this).css({color: pageColor});
             }, function(){
                jQuery(this).css({color: pageColor});
             });
        jQuery('.about span').css({color: realColor});
             jQuery(".about span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.corp span').css({color: realColor});
             jQuery(".corp span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
       
        jQuery('.char span').css({color: realColor});
             jQuery(".char span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.com span').css({color: realColor});
             jQuery(".com span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
         jQuery('.start span').css({color: realColor});
             jQuery(".start span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });     
                
     {/literal}</script>
     
     {*about page*}
{elseif $Page->tags[360]<>'' || $article.tags[360]<>''}
    
    <script>{literal}
         jQuery('.about span').css({color: pageColor});
             jQuery(".about span").hover(function(){
                jQuery(this).css({color: pageColor});
             }, function(){
                jQuery(this).css({color: pageColor});
             });
        jQuery('.home span').css({color: realColor});
             jQuery(".home span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.corp span').css({color: realColor});
             jQuery(".corp span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
       
        jQuery('.char span').css({color: realColor});
             jQuery(".char span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.com span').css({color: realColor});
             jQuery(".com span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
         jQuery('.start span').css({color: realColor});
             jQuery(".start span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });     
                
     {/literal}</script>
     
     {*corp page*}
{elseif $Page->tags[361]<>'' || $article.tags[361]<>''}
    
    <script>{literal}
         jQuery('.corp span').css({color: pageColor});
             jQuery(".corp span").hover(function(){
                jQuery(this).css({color: pageColor});
             }, function(){
                jQuery(this).css({color: pageColor});
             });
        jQuery('.about span').css({color: realColor});
             jQuery(".about span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.home span').css({color: realColor});
             jQuery(".home span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
       
        jQuery('.char span').css({color: realColor});
             jQuery(".char span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.com span').css({color: realColor});
             jQuery(".com span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
         jQuery('.start span').css({color: realColor});
             jQuery(".start span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });     
                
     {/literal}</script>
     
      {*char page*}
{elseif $Page->tags[362]<>'' || $article.tags[362]<>''}
    
    <script>{literal}
         jQuery('.char span').css({color: pageColor});
             jQuery(".char span").hover(function(){
                jQuery(this).css({color: pageColor});
             }, function(){
                jQuery(this).css({color: pageColor});
             });
        jQuery('.about span').css({color: realColor});
             jQuery(".about span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.corp span').css({color: realColor});
             jQuery(".corp span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
       
        jQuery('.home span').css({color: realColor});
             jQuery(".home span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.com span').css({color: realColor});
             jQuery(".com span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
         jQuery('.start span').css({color: realColor});
             jQuery(".start span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });     
                
     {/literal}</script>
     
     {*community page*}
{elseif $Page->tags[363]<>'' || $article.tags[3639]<>''}
    
    <script>{literal}
         jQuery('.com span').css({color: pageColor});
             jQuery(".com span").hover(function(){
                jQuery(this).css({color: pageColor});
             }, function(){
                jQuery(this).css({color: pageColor});
             });
        jQuery('.about span').css({color: realColor});
             jQuery(".about span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.corp span').css({color: realColor});
             jQuery(".corp span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
       
        jQuery('.char span').css({color: realColor});
             jQuery(".char span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.home span').css({color: realColor});
             jQuery(".home span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
         jQuery('.start span').css({color: realColor});
             jQuery(".start span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });     
                
     {/literal}</script>
     
     {*start page*}
{elseif $Page->tags[364]<>'' || $article.tags[364]<>''}
    
    <script>{literal}
         jQuery('.start span').css({color: pageColor});
             jQuery(".start span").hover(function(){
                jQuery(this).css({color: pageColor});
             }, function(){
                jQuery(this).css({color: pageColor});
             });
        jQuery('.about span').css({color: realColor});
             jQuery(".about span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.corp span').css({color: realColor});
             jQuery(".corp span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
       
        jQuery('.char span').css({color: realColor});
             jQuery(".char span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
        jQuery('.com span').css({color: realColor});
             jQuery(".com span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });
         jQuery('.home span').css({color: realColor});
             jQuery(".home span").hover(function(){
                jQuery(this).css({color:hoverColor});
             }, function(){
                jQuery(this).css({color:realColor});
             });     
                
     {/literal}</script>

     
{/if}