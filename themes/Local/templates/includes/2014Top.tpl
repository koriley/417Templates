<header id="header" class="navbar">
	<div class="navbar-inner">
            
		<div class="container-fluid">
                    {if $config.secondary_nav_menu_id}
			    <div class="eyebrow" style="float:right">
			    	{include file="menu-eyebrow.tpl"}
			    </div>
			{/if}
			<div class="branding row-fluid">
				<div class="logo-wrapper hidden-phone">
					<a class="logo" href="{$publication.params.logolinkurl}" alt="{$publication.title}">
						<img src="/images/2014/417Logo.png" alt="{$publication.title}" />
					</a>
				</div>
                                        <div class="adPlacement visible-desktop">
                                            {include file="sponsorship.tpl"}
                                        
                                        </div>
				<div class="nav-menus">
					<div class="collapsed-menus-wrapper">
					    <div class="collapsed-menu-btn-wrapper">
    					    {if $config.primary_nav_menu_id}
    						    {include file="menu-collapsed.tpl" menu_id=$config.primary_nav_menu_id }
    						{/if}
    						{if $config.third_level_nav_menu_id}
    						    {include file="menu-collapsed.tpl" menu_id=$config.third_level_nav_menu_id }
    						{/if}
    						{if $config.secondary_nav_menu_id}
    						    {include file="menu-collapsed.tpl" menu_id=$config.secondary_nav_menu_id }
    						{/if}						
						</div>
						<button id="collapsed-search-btn" class="menu-collapsed collapsed" data-toggle="collapse" data-parent="#header" data-target="#sitesearch" ><span><i class="icon-search"></i></span><span class="caret"></span></button>
					</div>
				</div>
			</div>
			
			<div id="sitesearch" class="nav-collapse collapse ">
				<!--{if isset($publication.params.weatherzipcode) && $publication.params.weatherzipcode|count_characters == 5 && $SERVERINFO.SERVER_PORT!='443'}
				<div id="weather">{weatherinfo zipcode=$publication.params.weatherzipcode}<a class="weather-image" href="{$publication.params.weatherpagepath}">{$weather.image}</a><div class="weather-misc visible-wide-desktop"><span class="weather-temp">{$weather.temp}</span><span class="weather-divider">{$strings_top_weather_divider}</span><a href="{$publication.params.weatherpagepath}"><span class="weather-forcast">{$strings_top_forecast}</span></a></div></div>
				{/if}-->
				<div id="searchform">
					{contentitem id=$publication.params.searchmoduleid}
				</div>
			</div>
			
			{if $config.globalheaderitem<>''}
				{contentitem id=$config.globalheaderitem}
			{/if}
		</div>
	
	{if $config.primary_nav_menu_id}
    	<div id="menu-parent-row">
    		<div class="main-menu" >
    			{include file="menu-main.tpl"}
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
</header>