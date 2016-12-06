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
GA_googleFillSlot("P1ncilBanner");
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

                        <a href="http://417magdeals.com"><img style="border:0px;" alt="417 Deal of the Day" src="/images/2013 social bar/socialbar1_0005_DOD.png"></a>
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

        <div class="navDining">
            <div class="navTitle"><a href="http://www.417mag.com/417-Magazine/417-Dining/">EAT</a></div>
            <div class="navMenu">
                <table cellpadding="0" cellspacing="0"><tr>
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=179">Recipes</a></td>
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=41">Reviews</a></td>
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=192&44">Table Talk</a></td>

                    </tr></table>  
            </div>
        </div>
        <div class="navShopping">
            <div class="navTitle"><a href="http://www.417mag.com/417-Magazine/417-Shopping/">SHOP</a></div>
            <div class="navMenu centerShoppingNav">
                <table cellpadding="0" cellspacing="0"><tr>
                        <!--<td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=329">Well Worn</a></td>-->
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=152">Savvy Shopper</a></td>
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/417-Shopping/Shopping-Guide/index.php">Resources</a></td>
                    </tr></table>  
            </div>
        </div>
        <div class="navGoDo">
            <div class="navTitle"><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/417-Calendar/">DO</a></div>
            <div class="navMenu">
                <table cellpadding="0" cellspacing="0"><tr>
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/417-Calendar/">Calendar</a></td>
                        <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Events-Contests/">Events & Contests</a></td>

                    </tr></table>  
            </div>
        </div>
        <div class="navBest">
            <div class="navTitle"><a href="http://www.417mag.com/417-Magazine/Best-of-417/">BEST</a></div>
            <div class="navMenu">
                <table cellpadding="0" cellspacing="0"><tr>
                        <td valign="top" id="navBlock"><nav id="topNav"><ul><li id="navBlock"><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=150" id="navBlock">Best of 417</a>
                                        <!--  <ul> 
                   <li><div id="dropImage"><img src="http://www.417mag.com/Blogs/417-Blog/February%202012/bestof_opening.png" width="100px" height="100px;"/></div>
                       <div style="float:left;">
                           <table>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/February-2012/Best-of-417/" >Best of 417 2012</a></td></tr>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/February-2011/Best-of-417-2011/" >Best of 417 2011</a></td></tr>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/February-2010/Best-of-417-Awards-2010/" >Best of 417 2010</a></td></tr>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/February-2009/Best-of-417-2009/" >Best of 417 2009</a></td></tr>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/February-2008/Best-of-417/" >Best of 417 2008</a></td></tr>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/February-2007/Best-of-417-Awards-2007/" >Best of 417 2007</a></td></tr>
                               <tr><td><a href="http://www.417mag.com/417-Magazine/August-2006/Best-of-2006/" >Best of 417 2006</a></td></tr>
                          </table>
                       </div></li>                           
                     
                                          </ul></li></ul>--></nav></td>
                                    <td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=15">5 Best</a></td>
                                    <!--<td><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=297">Best Dressed</a></td>-->           
                                    </tr></table>  
                                    </div>
                                    </div>
                                    <div class="navFavorites">
                                        <div class="navTitle"><a href="http://www.417mag.com/417-Magazine/Favorites/"> FAVORITES</a></div>
                                        <div class="navMenu">
                                            <table cellpadding="0" cellspacing="0"><tr>

                                                    <td valign="top"><nav id="blogNav"><ul><li><a style="padding:4px;" href="http://www.417mag.com/Blogs/417-Blog/">Blog</a>
                                                                    <ul>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=269">417 Contests</a></li>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=181">Best of the Day</a></li>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=217">Bridal Buzz</a></li>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=167">Photo File</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=177">Table Talk</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=176">Talk of the Town</a></li>
                                                                        <li class="last"><a href="http://www.417mag.com/417-Magazine/Department-Archive/index.php?tagID=329">Well Worn</a></li>
                                                                    </ul></li></ul></nav></td>
                                                    <td valign="top"><nav id="galleryNav"><ul><li><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/People-Pics/">Galleries</a>
                                                                    <ul>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/People-Pics/Archive">People Pics</a></li>  
                                                                        <li class="last"><a href="/417-Magazine/Wheres-417-Archive/">Where's 417</a></li>  
                                                                    </ul></li></ul></nav></td>
                                                    <td valign="top"><nav id="guideNav"><ul><li><a style="padding:4px;" href="http://www.417mag.com/417-Magazine/Favorites/">417 Favorites</a>
                                                                    <ul>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Aging-Parents-Guide/">Aging Parent Resources</a></li>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Architects/">Architects</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Attorneys/">Attorneys</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Branson-Resources/">Branson</a></li>  
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Dentists/">Dentists</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Doctors/">Doctors</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Financial-Experts/">Financial Experts</a></li>
                                                                        <li><a href="http://www.417mag.com/417-Magazine/Favorites/Guide-to-Beautiful/">Guide to Beautiful</a></li>
                                                                        <li class=""><a href="http://www.417mag.com/417-Magazine/Favorites/Kids-Camps/">Kids Camps</a></li>
                                                                        <li class=""><a href="http://www.417mag.com/417-Magazine/Favorites/Medical/">Medical</a></li>
                                                                        <li class="last"><a href="http://www.417mag.com/417-Magazine/Favorites/Vision-Care/">Vision Care</a></li>
                                                                    </ul></li></ul></nav></td>

                                                </tr></table>
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
                                                                                                        
                                                    <td><a style="color:#d71921;" href="http://www.417mag.com/417-Office-Remodel/">OFFICE REMODEL</a></td>
                                                    <td><a style="color:#d71921;" href="http://www.417mag.com/indulge/">INDULGE</a></td>
                                                    
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