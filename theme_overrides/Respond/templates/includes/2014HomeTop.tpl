
<div class="greyBar visible-desktop" style="box-shadow: 2px 2px 2px #6b6a6a; position:absolute; right:0px; left:0px; top:190px; height:40px; background-color:#9f9d9d;"></div>
<header id="header" class="navbar"  style="margin-bottom:25px;">
	<div class="navbar-inner" >
            
		<div class="container-fluid">
                    
                    {if $config.secondary_nav_menu_id}
			    <div class="eyebrow" style="float:right">
			    	{include file="menu-eyebrow.tpl"}
                                
			    </div>
			{/if}
                         
			<div class="branding row-fluid">
				<div class="logo-wrapper">
					<a class="logo" href="{$publication.params.logolinkurl}" alt="{$publication.title}">
                                            <!--<a class="logo" href="http://417mag.com/r5/" alt="{$publication.title}">-->
						<img src="{$publication.params.logopath}" alt="{$publication.title}" />
					</a>
				</div>
                                        <div class="adPlacement visible-desktop">
                                            {include file="sponsorship.tpl"}
                                        
                                        </div>
				<div class="nav-menus">
					<div class="collapsed-menus-wrapper">
					    <div class="collapsed-menu-btn-wrapper">
    					    {if $config.primary_nav_menu_id}
    						    {include file="menu-collapsed.tpl" menu_id=$config.primary_nav_menu_id}
    						{/if}
    						{*if $config.third_level_nav_menu_id}
    						    {include file="menu-collapsed.tpl" menu_id=$config.third_level_nav_menu_id }
    						{/if}
    						{if $config.secondary_nav_menu_id}
    						    {include file="menu-collapsed.tpl" menu_id=$config.secondary_nav_menu_id }
    						{/if*}						
						</div>
						<!--<button id="collapsed-search-btn" class="menu-collapsed collapsed" data-toggle="collapse" data-parent="#header" data-target="#sitesearch" ><span><i class="icon-search"></i></span><span class="caret"></span></button>-->
					</div>
				</div>
			</div>
			
			<!--<div id="sitesearch" class="nav-collapse collapse ">
				{if isset($publication.params.weatherzipcode) && $publication.params.weatherzipcode|count_characters == 5 && $SERVERINFO.SERVER_PORT!='443'}
				<div id="weather">{weatherinfo zipcode=$publication.params.weatherzipcode}<a class="weather-image" href="{$publication.params.weatherpagepath}">{$weather.image}</a><div class="weather-misc visible-wide-desktop"><span class="weather-temp">{$weather.temp}</span><span class="weather-divider">{$strings_top_weather_divider}</span><a href="{$publication.params.weatherpagepath}"><span class="weather-forcast">{$strings_top_forecast}</span></a></div></div>
				{/if}
				<div id="searchform">
					{contentitem id=$publication.params.searchmoduleid}
				</div>
			</div>-->
			
			{if $config.globalheaderitem<>''}
				{contentitem id=$config.globalheaderitem}
			{/if}
                        
		</div>
	
	{if $config.primary_nav_menu_id}
    	<div id="menu-parent-row" >
    		<div class="main-menu fs20" id="" >
    			<div >{include file="menu-main.tpl"}</div>
    		</div>
    	</div></div>
	{/if}
	{if $config.third_level_nav_menu_id}
    	<div id="menu-third-level">
    	    <div class="third-level-menu">
    	        {include file="menu-third-level.tpl"}
    	    </div>
    	</div>
	{/if}
        <!--<div id="stickyheader"></div>-->
        {loadModules position="header"}
</header>
       {literal}
           <script>
               var sizeColor = 'white';
               screenSize = jQuery(window).width();
                    if(screenSize < 770){
                 sizeColor = 'black';
             } 
                 </script>
       {/literal}    
        
{if $ishome<>''}
    {assign var='tagSystemName' value='homepage'}
    {assign var='nav1' value='-on'}
    <script>{literal}
        jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[313]<>'' || $article.tags[313]<>''}
    {assign var='tagName' value='Best Of Article'}
    {assign var='tagSystemName' value='best-article'}
    <script>{literal}
         jQuery('.bo span').css({color: 'red'});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
         jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });         
     {/literal}</script>
{elseif $Page->tags[325]<>'' || $article.tags[325]<>''}
    {assign var='tagName' value='10mbPage'}
    {assign var='tagSystemName' value='10mbPage'}		
{elseif $Page->tags[40]<>'' || $article.tags[40]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: 'red'});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: 'red'});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>  
{elseif $Page->tags[279]<>'' || $article.tags[279]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: 'red'});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
         jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });         
     {/literal}</script>     
{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
    {assign var='tagname' value='Stuff to Do'}
    {assign var='tagSystemName' value='calendar'}
    {assign var='nav3' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: 'red'});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: 'red'});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });  
         jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });         
     {/literal}</script>
 {elseif $Page->tags[267]<>'' || $article.tags[267]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: 'red'});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>    
{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
    {assign var='tagname' value='Best of 417'}
    {assign var='tagSystemName' value='best-of'}
    {assign var='nav5' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: 'red'});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
    {assign var='tagname' value='Shopping'}
    {assign var='tagSystemName' value='shopping'}
    {assign var='nav6' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: 'red'});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             }); 
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[162]<>'' || $article.tags[162]<>''}
    {assign var='tagname' value='Services'}
    {assign var='tagSystemName' value='services'}
    {assign var='nav11' value='-on'}
{elseif $Page->tags[166]<>'' || $article.tags[167]<>''}
    {assign var='tagname' value='Wheres 417'}
    {assign var='tagSystemName' value='wheres-417'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: 'red'});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });   
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[327]<>'' || $article.tags[327]<>''}
    {assign var='tagname' value='Restaurant Month'}
    {assign var='tagSystemName' value='restaurantMonth'}
    {assign var='nav6' value='-on'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: 'red'});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });          
     {/literal}</script>
{elseif $Page->tags[274]<>'' || $article.tags[274]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: 'red'});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });           
     {/literal}</script>
  {elseif $Page->tags[336]<>'' || $article.tags[336]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: 'red'});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });           
     {/literal}</script>   
 {elseif $Page->tags[338]<>'' || $article.tags[338]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: 'red'});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });           
     {/literal}</script>   
{elseif $Page->tags[337]<>'' || $article.tags[337]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: 'red'});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });         
     {/literal}</script>
     
{elseif $Page->tags[339]<>'' || $article.tags[339]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: 'red'});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
       jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });           
     {/literal}</script>    
     {elseif $Page->tags[340]<>'' || $article.tags[340]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
       jQuery('.health span').css({color: 'red'});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });           
     {/literal}</script>
     {elseif $Page->tags[37]<>'' || $article.tags[37]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
       jQuery('.health span').css({color: 'red'});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });
       jQuery('.spaces span').css({color: sizeColor});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });           
     {/literal}</script>
     {elseif $Page->tags[341]<>'' || $article.tags[341]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
       jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: 'red'});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });           
     {/literal}</script>
     {elseif $Page->tags[342]<>'' || $article.tags[342]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
       jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: 'red'});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });           
     {/literal}</script>
     {elseif $Page->tags[309]<>'' || $article.tags[309]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}
<script>{literal}
         jQuery('.bo span').css({color: sizeColor});
             jQuery(".bo span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.cal span').css({color: sizeColor});
             jQuery(".cal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.dining span').css({color: sizeColor});
             jQuery(".dining span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.gal span').css({color: sizeColor});
             jQuery(".gal span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.ec span').css({color: sizeColor});
             jQuery(".ec span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
        jQuery('.style span').css({color: sizeColor});
             jQuery(".style span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             }); 
       jQuery('.health span').css({color: sizeColor});
             jQuery(".health span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:sizeColor});
             });
       jQuery('.spaces span').css({color: 'red'});
             jQuery(".spaces span").hover(function(){
                jQuery(this).css({color:'red'});
             }, function(){
                jQuery(this).css({color:'red'});
             });           
     {/literal}</script>
     
{/if}
    
    <!-- back to top -->
    <div style="width:100%; position:fixed; top:0px; z-index:50000;">
    <div style="width:1200px; margin:auto;">
        <a href="#" class="back-to-top"><span class="icon-arrow-up"></span></a>
    </div>
</div>