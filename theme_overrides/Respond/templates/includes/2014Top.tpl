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
        jQuery('.navButton span').css({color: sizeColor});
        jQuery('.navButton span').hover(function () {
            jQuery(this).css({color: 'red'});
        }, function () {
            jQuery(this).css({color: sizeColor});

        });
    </script>
{/literal}

{if $ishome<>''}
    {assign var='tagSystemName' value='homepage'}
    {assign var='nav1' value='-on'}
    {literal}
        <script>


        </script>
    {/literal}
{elseif $Page->tags[313]<>'' || $article.tags[313]<>''}
    {assign var='tagName' value='Best Of Article'}
    {assign var='tagSystemName' value='best-article'}
    {literal}
        <script>

            jQuery('.bo span').css({color: 'red'});
            jQuery(".bo span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[325]<>'' || $article.tags[325]<>''}
    {assign var='tagName' value='10mbPage'}
    {assign var='tagSystemName' value='10mbPage'}		
{elseif $Page->tags[40]<>'' || $article.tags[40]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
    {literal}
        <script>

            jQuery('.dining span').css({color: 'red'});
            jQuery(".dining span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
    {literal}
        <script>

            jQuery('.dining span').css({color: 'red'});
            jQuery(".dining span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}  
{elseif $Page->tags[279]<>'' || $article.tags[279]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'}
    {literal}
        <script>

            jQuery('.dining span').css({color: 'red'});
            jQuery(".dining span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}     
{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
    {assign var='tagname' value='Stuff to Do'}
    {assign var='tagSystemName' value='calendar'}
    {assign var='nav3' value='-on'}
    {literal}
        <script>

            jQuery('.cal span').css({color: 'red'});
            jQuery(".cal span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });

        </script>
    {/literal}
{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}
    {literal}<script>

        jQuery('.gal span').css({color: 'red'});
        jQuery(".gal span").hover(function () {
            jQuery(this).css({color: 'red'});
        }, function () {
            jQuery(this).css({color: 'red'});
        });

        </script>
    {/literal}
{elseif $Page->tags[267]<>'' || $article.tags[267]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}
    {literal}
        <script>

            jQuery('.gal span').css({color: 'red'});
            jQuery(".gal span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });

        </script>
    {/literal}    
{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
    {assign var='tagname' value='Best of 417'}
    {assign var='tagSystemName' value='best-of'}
    {assign var='nav5' value='-on'}
    {literal}
        <script>
            jQuery('.bo span').css({color: 'red'});
            jQuery(".bo span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
    {assign var='tagname' value='Shopping'}
    {assign var='tagSystemName' value='shopping'}
    {assign var='nav6' value='-on'}
    {literal}
        <script>

            jQuery('.style span').css({color: 'red'});
            jQuery(".style span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });

        </script>
    {/literal}
{elseif $Page->tags[162]<>'' || $article.tags[162]<>''}
    {assign var='tagname' value='Services'}
    {assign var='tagSystemName' value='services'}
    {assign var='nav11' value='-on'}
{elseif $Page->tags[166]<>'' || $article.tags[167]<>''}
    {assign var='tagname' value='Wheres 417'}
    {assign var='tagSystemName' value='wheres-417'}
    {literal}
        <script>

            jQuery('.gal span').css({color: 'red'});
            jQuery(".gal span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });

        </script>
    {/literal}
{elseif $Page->tags[327]<>'' || $article.tags[327]<>''}
    {assign var='tagname' value='Restaurant Month'}
    {assign var='tagSystemName' value='restaurantMonth'}
    {assign var='nav6' value='-on'}
    {literal}
        <script>

            jQuery('.dining span').css({color: 'red'});
            jQuery(".dining span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });

        </script>
    {/literal}
{elseif $Page->tags[274]<>'' || $article.tags[274]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
    {literal}
        <script>

            jQuery('.ec span').css({color: 'red'});
            jQuery(".ec span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });

        </script>
    {/literal}
{elseif $Page->tags[336]<>'' || $article.tags[336]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
    {literal}
        <script>

            jQuery('.ec span').css({color: 'red'});
            jQuery(".ec span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}   
{elseif $Page->tags[338]<>'' || $article.tags[338]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
    {literal}
        <script>

            jQuery('.ec span').css({color: 'red'});
            jQuery(".ec span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}   
{elseif $Page->tags[337]<>'' || $article.tags[337]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
    {literal}
        <script>

            jQuery('.ec span').css({color: 'red'});
            jQuery(".ec span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}

{elseif $Page->tags[339]<>'' || $article.tags[339]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}
    {literal}
        <script>

            jQuery('.ec span').css({color: 'red'});
            jQuery(".ec span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}    
{elseif $Page->tags[340]<>'' || $article.tags[340]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
    {literal}
        <script>

            jQuery('.health span').css({color: 'red'});
            jQuery(".health span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[37]<>'' || $article.tags[37]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='health'}	
    {assign var='tagSystemName' value='health'}
    {literal}
        <script>

            jQuery('.health span').css({color: 'red'});
            jQuery(".health span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[341]<>'' || $article.tags[341]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}
    {literal}
        <script>

            jQuery('.spaces span').css({color: 'red'});
            jQuery(".spaces span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[342]<>'' || $article.tags[342]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}
    {literal}
        <script>

            jQuery('.spaces span').css({color: 'red'});
            jQuery(".spaces span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}
{elseif $Page->tags[309]<>'' || $article.tags[309]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='spaces'}	
    {assign var='tagSystemName' value='spaces'}
    {literal}
        <script>

            jQuery('.spaces span').css({color: 'red'});
            jQuery(".spaces span").hover(function () {
                jQuery(this).css({color: 'red'});
            }, function () {
                jQuery(this).css({color: 'red'});
            });
        </script>
    {/literal}

{/if}


<div id='mother'></div>
<div id="basePencil" style="width:100%; position:fixed; bottom:0px; z-index:40000;">
    <div id="smallPencil" style="width:1200px; height:35px;  margin:auto; " ></div>
    {literal}
        <script type='text/javascript'>
            var ad = "<div id='div-gpt-ad-1479474669376-104' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-104'); });<";
            ad += "/script></div>";
            jQuery("#smallPencil").append(ad);



        </script>
    {/literal}
    <div id="bigPencil" style="width:1200px; height:245px; display:none; margin:auto;"></div>
    {literal}
        <script type='text/javascript'>
            var ad = "<div id='div-gpt-ad-1479474669376-103' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-103'); });<";
            ad += "/script></div>";
            jQuery("#bigPencil").append(ad);
            //GA_googleFillSlot("r5_bigPencil");
        </script>
    {/literal}
</div>
<div id="baseTabPencil" style="width:100%; position:fixed; bottom:0px; z-index:40000;">
    <!-- tablet -->
    <div id="smallTabPencil" style="width:770px; height:24px;  margin:auto; "></div>
    {literal}
        <script type='text/javascript'>
            var ad = "<div id='div-gpt-ad-1479474669376-106' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-106'); });<";
            ad += "/script></div>";
            jQuery("#smallTabPencil").append(ad);

        </script>
    {/literal}

    <div id="bigTabPencil" style="width:770px; height:245px; display:none; margin:auto;" ><div class="closeX" style="float:right; color:#fff; font-size:35px; cursor:pointer;">&times;</span></div></div>{literal}
    <script type='text/javascript'>
        var ad = "<div id='div-gpt-ad-1479474669376-105' ><script>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1479474669376-105'); });<";
        ad += "/script></div>";
        jQuery("#bigTabPencil").append(ad);

    </script>
    {/literal}


    </div>
    <div id="greyOut" style="display:none; width:100%; height:100%; background-color:#000; opacity:0.8; position:fixed; top:0; left:0; z-index:39999;"></div> 

    <script>
        {literal}

                                                                        var screenHeight = jQuery(window).height();
                                                                        var screenWidth = jQuery(window).width();
                                                                        // jQuery('#mother').html('myWidth= '+screenWidth);
                                                                        if (screenWidth >= 1200) {

                                                                            jQuery('#baseTabPencil').remove();
                                                                            jQuery("#smallPencil").mouseenter(function () {
                                                                                jQuery('#smallPencil').hide();
                                                                                jQuery('#bigPencil').show();

                                                                            });

                                                                            jQuery("#bigPencil").mouseleave(function () {
                                                                                jQuery('#bigPencil').hide();
                                                                                jQuery('#smallPencil').show();
                                                                            });
                                                                        }
                                                                        if ((screenWidth >= 760) && (screenWidth < 1200)) {
                                                                            jQuery('#basePencil').remove();
                                                                            var exist = jQuery('#smallTabPencil iframe').length;
                                                                            if (exist > 0) {
                                                                                jQuery('#smallTabPencil').mouseenter(function () {
                                                                                    jQuery('#smallTabPencil').hide();
                                                                                    jQuery('#bigTabPencil').show();
                                                                                    jQuery('#greyOut').show();
                                                                                });

                                                                                jQuery('#greyOut, .closeX').click(function () {
                                                                                    jQuery('#smallTabPencil').show();
                                                                                    jQuery('#bigTabPencil').hide();
                                                                                    jQuery('#greyOut').hide();
                                                                                });
                                                                            }
                                                                        }
                                                                        if (screenWidth < 760) {
                                                                            jQuery('#basePencil').remove();
                                                                            jQuery('#baseTabPencil').remove();
                                                                        }
        {/literal}
    </script>     

    <!-- back to top -->
    <div style="width:100%; position:fixed; top:0px; z-index:50000;">
        <div style="width:1200px; margin:auto;">
            <a href="#" class="back-to-top"><span class="icon-arrow-up"></span></a>
        </div>
    </div>