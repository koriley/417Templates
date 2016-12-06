
<div class="greyBar visible-desktop" style="box-shadow: 2px 2px 2px #6b6a6a; position:absolute; right:0px; left:0px; top:190px; height:40px; background-color:#9f9d9d;"></div>
{addjs file="jquery-ui-1.10.4.custom.min.js" position="footer" order="9000"}
<header id="header" class="navbar"  style="">
    <div class="navbar-inner" >

        <div class="container-fluid din">

            {if $config.secondary_nav_menu_id}
                <!--   <div class="hamNav" style="float:right; cursor:pointer; width:65px; height:45px; display:none;">
                       <img src="/images/biz417/menuIcon.png" />
                   </div>
                   <div class="eyebrow" style="display:none;/* float:right; */border: 0px solid red;width: 200px;height: 240px;position: absolute; top: 65px; /* left: 0px; */background: #000;z-index: 10000;right: 0;">
                {*include file="menu-eyebrow.tpl"*}

            </div>-->
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
                            <div style="height:35px; margin-left:100px;" class="visible-phone">
                                <button  class="btn searchTrigger" style="display:inline; height:35px; margin-top:0px; vertical-align: top; float:right; margin-right:-60px"><span class="icon-search"></span></button></div>
                        </div>
                        <!--<button id="collapsed-search-btn" class="menu-collapsed collapsed" data-toggle="collapse" data-parent="#header" data-target="#sitesearch" ><span><i class="icon-search"></i></span><span class="caret"></span></button>-->
                    </div>
                </div>
                <form action="http://www.417mag.com/417-Magazine/Search-Results/" class="mySearch" style="display:none; margin-bottom:-15px;">
                    <div class="input-append " style="margin-bottom:25px;" >
                        <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
                        <input type="hidden" name="cof" value="FORID:11" />
                        <input type="hidden" name="ie" value="UTF-8" />
                        <input type="text" name="q" class="input-medium" id="appendedInputButtons" placeholder="search" style="margin:auto; width:85%; margin-top:5px;" />
                        <button type="submit" class="btn" style="display:inline; margin-top:5px;"><span class="icon-search"></span></button>
                    </div>
                </form>
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
                <div class="main-menu din fs20" id="" >
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
<div class='row'>
    <div class='container deskSearchBar'  style=" width:1200px; height:45px; text-align:center; background-color:black; display:none;">
        <form action="http://www.417mag.com/417-Magazine/Search-Results/" class="" style=" margin-bottom:-15px;">
            <div class="input-append " style="margin-bottom:25px;" >
                <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />  
                <input type="hidden" name="cof" value="FORID:11" />
                <input type="hidden" name="ie" value="UTF-8" />
                <input type="text" name="q" class="input-medium" id="appendedInputButtons" placeholder="search" style="margin:auto; width:85%; margin-top:5px;" />
                <button type="submit" class="btn" style="display:inline; margin-top:5px;"><span class="icon-search"></span></button>
            </div>
        </form>
    </div>
</div>

{literal}
    <script>

        jQuery('.deskSearch span').click(function () {
            jQuery('.deskSearchBar').toggle("slide", {
                easing: "swing",
                direction: "up"

            });
        });

        var sizeColor = 'white';
        screenSize = jQuery(window).width();
        if (screenSize < 770) {
            sizeColor = 'black';
            jQuery('.dropdown').css({display: 'none'});
        }

        //This is for the mobile search button..


        jQuery('.searchTrigger').click(function () {

            jQuery('.mySearch').toggle("slide", {
                easing: "swing",
                direction: "down"

            });

        });
    </script>
{/literal} 
{literal}
    <script>
        var sizeColor = 'white';
        screenSize = jQuery(window).width();
        if (screenSize < 770) {
            sizeColor = 'black';
        }
    </script>
{/literal}    



<!-- back to top -->
<div style="width:100%; position:fixed; top:0px; z-index:50000;">
    <div style="width:1200px; margin:auto;">
        <a href="#" class="back-to-top"><span class="icon-arrow-up"></span></a>
    </div>
</div>