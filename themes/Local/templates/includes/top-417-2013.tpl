{if $ishome<>''}
    {assign var='tagSystemName' value='homepage'}
    {assign var='nav1' value='-on'}
{elseif $Page->tags[313]<>'' || $article.tags[313]<>''}
    {assign var='tagName' value='Best Of Article'}
    {assign var='tagSystemName' value='best-article'}        
{elseif $Page->tags[325]<>'' || $article.tags[325]<>''}
    {assign var='tagName' value='10mbPage'}
    {assign var='tagSystemName' value='10mbPage'}		
{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
    {assign var='tagname' value='Dininng'}
    {assign var='tagSystemName' value='dining'}
    {assign var='nav2' value='-on'} 
{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
    {assign var='tagname' value='Stuff to Do'}
    {assign var='tagSystemName' value='calendar'}
    {assign var='nav3' value='-on'}		
{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
    {assign var='tagname' value='People Pics'}
    {assign var='tagSystemName' value='people-pics'}
    {assign var='nav4' value='-on'}		
{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
    {assign var='tagname' value='Best of 417'}
    {assign var='tagSystemName' value='best-of'}
    {assign var='nav5' value='-on'}
{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
    {assign var='tagname' value='Shopping'}
    {assign var='tagSystemName' value='shopping'}
    {assign var='nav6' value='-on'}	
{elseif $Page->tags[162]<>'' || $article.tags[162]<>''}
    {assign var='tagname' value='Services'}
    {assign var='tagSystemName' value='services'}
    {assign var='nav11' value='-on'}
{elseif $Page->tags[166]<>'' || $article.tags[167]<>''}
    {assign var='tagname' value='Wheres 417'}
    {assign var='tagSystemName' value='wheres-417'}
{elseif $Page->tags[327]<>'' || $article.tags[327]<>''}
    {assign var='tagname' value='Restaurant Month'}
    {assign var='tagSystemName' value='restaurantMonth'}
    {assign var='nav6' value='-on'}
{elseif $Page->tags[274]<>'' || $article.tags[167]<>''}
    {assign var='nav9' value='-on'}	
    {assign var='tagname' value='Events and Contests'}	
    {assign var='tagSystemName' value='events-and-contests'}

{/if}
<div class="PencilBanner" >
{literal}
<script type='text/javascript'>
GA_googleFillSlot("PencilBanner");
</script>
{/literal}
</div>
<div class="shadow">
<div class="socialCont">
    <div class="socialButt" style="float:left;">
        <table style="margin:auto; padding-top:4px;" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <!--apple--><a href="http://itunes.apple.com/us/app/417-magazine/id384340110?mt=8"><img style="padding-left:3px;" src="/images/2013%20social%20bar/socialbar1_0001_App-Store.png" /></a>
                </td><td valign="top">
                    <!--facebook--><a href="http://www.facebook.com/417mag"><img src="/images/2013 social bar/socialbar1_0002_Facebook.png" /></a>
                </td><td valign="top">
                    <!--twitter--><a href="http://twitter.com/417_magazine"><img src="/images/2013 social bar/socialbar1_0003_Twitter.png" /></a>
                </td><td valign="top">
                    <!--pin--><a id="pintrest-pin" class="pinit" href='{literal}javascript:void((function(){var e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)})());{/literal}'><img src="/images/2013 social bar/socialbar1_0004_Pinterest.png" /></a>
                </td></tr></table> </div>
    <div style="float:right;">
        <form action="http://www.417mag.com/417-Magazine/Search-Results/">
            <table style="padding-top:2px;"><tr>
                    <td valign="top">

                        <!--<a href="http://www.417ideahome.com"><img style="border:0px;" alt="417 Idea Home" src="/images/elements/tab_04.gif"></a>-->
                        <a href="http://www.417bride.com"><img style="border:0px;" alt="417 Bride" src="/images/2013 social bar/socialbar1_0006_Bride.png"></a>
                    </td><td valign="top">
                        {if $publication.url=='/417-Home/'} <a href="http://417mag.com"><img style="border:0px;" alt="417 Magazine" src="/images/elements/tab_02alt.gif"></a> 
                            {else}
                            <a href="http://417homemagazine.com"><img style="border:0px;" alt="417 Home" src="/images/2013 social bar/socialbar1_0007_Home.png"></a> 
                            {/if}

                        
                    </td><td valign="top">
                        <div style="float:left; padding-left:5px; margin-top:-1px;">
                            

                            <input style="border:1px solid; height:23px; " type="text" name="q" size="28" />
                            <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
                            <input type="hidden" name="cof" value="FORID:11" />
                            <input type="hidden" name="ie" value="UTF-8" />
                        </div>
                    </td>
                    <td valign="top">
                        <div style="float:right; ">
                            <input type="submit" name="sa" value="search"/>
                        </div>


                    </td></tr>
            </table></form>
    </div>

</div> 

    <div class="custAdSize">{include file="sponsorship.tpl"}</div>
        

    <div id="topbanner">

        <div class="clearfix" style="background-color:#fff; width:970px;">
            {if $publication.url=='/417-Home/'} <a href="http://www.417homemagazine.com" style=" padding:15px 10px "><img width="448px" height="85px" src="/images/re/home_logo.png" alt="417 Magazine" style="margin-left:120px; " /></a> 
                {else}
                <div class="logo"><a href="http://www.417mag.com/" style="padding:10px"><img src="/images/elements/logo.png" alt="417 Magazine" width="650px;" /></a> </div>
                    {/if}


            <div class="subscribeImage"><a href="https://www.417mag.com/417-Magazine/Store/Subscribe/index.php"><img src="http://417mag.com/images/elements/subscribe.jpg"></a></div>

        </div>
    </div>

                    <div class="navContainer">
        
                        <!--<div class="navHome">
                            <div class="homeText"><a href="#"> HOME</a></div>
                        </div>-->
            
                        <div class="navDining" style="text-align:center; width:175px;">
                            <div class="navTitle" ><a href="http://www.417mag.com/Calendar/">CALENDAR</a></div>
                                <div class="navMenu">
                
                            </div>
                        </div>
                        <div class="navShopping" style="text-align:center; width:100px;">
                            <div class="navTitle"><a href="http://www.417mag.com/Dining/">DINING</a></div>
                                <div class="navMenu centerShoppingNav">
                
                            </div>
                        </div>
                        <div class="navGoDo" style="text-align:center; width:130px;">
                            <div class="navTitle"><a style="padding:4px;" href="http://www.417mag.com/Galleries/">GALLERIES</a></div>
                                <div class="navMenu">
                
                            </div>
                        </div>
                        <div class="navBest" style="text-align:center; width:110px;">
                            <div class="navTitle"><a href="http://417mag.com/Best-of-417/">BEST OF</a></div>
                                <div class="navMenu">
                
                            </div>
                        </div>
                        <div class="navBest" style="text-align:center; width:110px;">
                            <div class="navTitle"><a href="http://www.417mag.com/Style/">STYLE</a></div>
                                <div class="navMenu">
                
                            </div>
                        </div>
                        <div class="navBest" style="text-align:center; width:110px;">
                            <div class="navTitle"><a href="http://417mag.com/Health/">HEALTH</a></div>
                                <div class="navMenu">
                
                            </div>
                        </div>
                        <div class="navFavorites" style="text-align:center; width:110px;">
                            <div class="navTitle"><a href="http://417mag.com/Spaces/">SPACES</a></div>
                            <div class="navMenu">

                            </div>
                        </div>
                        
                                        
                    </div>	
                                    <!--<div id="navigation-container">	
                                    <table id="nav">
                                            <tr>
                                                    <td class="{$nav5}"><a class="menuButton{$nav5}" href="/417-Magazine/Best-of-417/"  id="bm14" onmouseover="buttonMouseover(event, 'm14');">Best of 417</a></td>
                                                    <td class="{$nav2}"><a class="menuButton{$nav2}" href="/417-Magazine/417-Dining/"  id="bm19" onmouseover="buttonMouseover(event, 'm12');">Dining</a></td>
                                                    <td class="{$nav6}"><a class="menuButton{$nav6}" href="/417-Magazine/417-Shopping/"  id="bm15" onmouseover="buttonMouseover(event, 'm99');">Shopping & Services</a></td>
                                                    <td class="{$nav9}"><a class="menuButton{$nav9}" href="/417-Magazine/Events-Contests/"  id="bm10" onmouseover="buttonMouseover(event, 'm10');">Events & Contests</a></td>
                                                    <td class="{$nav3}"><a class="menuButton{$nav3}" href="/417-Magazine/417-Calendar/"  id="bm12" onmouseover="buttonMouseover(event, 'm13');">Stuff to Do</a></td>
                                                    <td class="{$nav4}"><a class="menuButton{$nav4}" href="/417-Magazine/People-Pics/"  id="bm13" onmouseover="buttonMouseover(event, 'm99');">Photos</a></td>
                                                    <td class="{$nav8}"><a class="menuButton{$nav8}" href="/417-Magazine/Favorites/"  id="bm17" onmouseover="buttonMouseover(event, 'm99');">417 Favorites</a></td>
                                                    <td class="{$nav7}"><a class="menuButton{$nav7}" href="/417-Magazine/Store"  id="bm16" onmouseover="buttonMouseover(event, 'm99');">Store</a></td>
                                                    <td class="{$nav10}"><a class="menuButton{$nav10}" href="http://{$SERVERINFO.SERVER_NAME}/417-Magazine/archive-index" id="bm18" onmouseover="buttonMouseover(event, 'm99');">Archive</a></td>
                                                    
                                                    
                                            </tr>
                                    </table>
                                    
                                    </div>-->



                                    <div id="subnav-container">
                                        <div style="height:20px; border-bottom:2px solid #7c7c7c; width:970px; background-color:#fff;">
                                            <table class="subnav">
                                                <tr>
                                                    <td><a style="color:#6b6b6b;" href="/417-Magazine/Store/Subscribe/">SUBSCRIBE</a></td>
                                                    <td><a style="color:#6b6b6b;" href="/417-Magazine/Advertise">ADVERTISE</a></td>
                                                    <td><a style="color:#6b6b6b;" href="/417-Magazine/About-417/Contact-Us/">CONTACT US</a></td>
                                                    <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/417-Digital-Edition/">TABLET EDITION</a></td>
                                                    <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/Newsletter-Signup/">E-NEWSLETTER</a></td>
                                                    <td><a style="color:#6b6b6b;" href="https://www.417mag.com/417-Magazine/Store/">STORE</a></td>
                                                    <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/Video-Channel/">VIDEO</a></td>
                                                    <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/archive-index">ARCHIVE</a></td>
                                                                                                        
                                                    <!--<td><a style="color:#d71921;" href="http://www.417mag.com/417-Office-Remodel/">OFFICE REMODEL</a></td> 
                                                    <td><a style="color:#d71921;" href="http://www.417mag.com/foodwars/">FOOD WARS</a></td>-->
                                                                                                          
                                                   
                                                </tr>
                                            </table>

                                        </div>

                                    </div>

                                    {literal}


                                        <script>  
                                        (function($){  
                                            //cache nav  
                                            var nav = $("#topNav");  
                                            //add indicators and hovers to submenu parents  
                                            nav.find("li").each(function() {  
                                                if ($(this).find("ul").length > 0) {  
                                                   // $("<span>").text("^").appendTo($(this).children(":first"));
                       
                                                    //show subnav on hover  
                                                    $(this).mouseenter(function() {  
                                                        $(this).find("ul").stop(true, true).slideDown();
                           
                                                    });  
                                                    //hide submenus on exit  
                                                    $(this).mouseleave(function() {  
                                                        $(this).find("ul").stop(true, true).slideUp();
                            
                                                    });  
                                                }  
                                            });  
                                        })(jQuery);  
                                            (function($){  
                                            //cache nav  
                                            var nav = $("#blogNav");  
                                            //add indicators and hovers to submenu parents  
                                            nav.find("li").each(function() {  
                                                if ($(this).find("ul").length > 0) {  
                                                   // $("<span>").text("^").appendTo($(this).children(":first"));  
                                                    //show subnav on hover  
                                                    $(this).mouseenter(function() {  
                                                        $(this).find("ul").stop(true, true).slideDown();  
                                                    });  
                                                    //hide submenus on exit  
                                                    $(this).mouseleave(function() {  
                                                        $(this).find("ul").stop(true, true).slideUp();  
                                                    });  
                                                }  
                                            });  
                                        })(jQuery);
            
                                            (function($){  
                                            //cache nav  
                                            var nav = $("#guideNav");  
                                            //add indicators and hovers to submenu parents  
                                            nav.find("li").each(function() {  
                                                if ($(this).find("ul").length > 0) {  
                                                   // $("<span>").text("^").appendTo($(this).children(":first"));  
                                                    //show subnav on hover  
                                                    $(this).mouseenter(function() {  
                                                        $(this).find("ul").stop(true, true).slideDown();  
                                                    });  
                                                    //hide submenus on exit  
                                                    $(this).mouseleave(function() {  
                                                        $(this).find("ul").stop(true, true).slideUp();  
                                                    });  
                                                }  
                                            });  
                                        })(jQuery);
            
                                            (function($){  
                                            //cache nav  
                                            var nav = $("#galleryNav");  
                                            //add indicators and hovers to submenu parents  
                                            nav.find("li").each(function() {  
                                                if ($(this).find("ul").length > 0) {  
                                                   // $("<span>").text("^").appendTo($(this).children(":first"));  
                                                    //show subnav on hover  
                                                    $(this).mouseenter(function() {  
                                                        $(this).find("ul").stop(true, true).slideDown();  
                                                    });  
                                                    //hide submenus on exit  
                                                    $(this).mouseleave(function() {  
                                                        $(this).find("ul").stop(true, true).slideUp();  
                                                    });  
                                                }  
                                            });  
                                        })(jQuery);
                                            
                                            
                                        </script>  
                                    {/literal}