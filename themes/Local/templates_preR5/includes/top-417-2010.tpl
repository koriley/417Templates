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
	
<form action="http://www.417mag.com/417-Magazine/Search-Results/"><table style="float:left; padding-bottom:0px;" >
<tr>
<td>

<a href="http://www.facebook.com/417mag"><img src="/images/facebook.jpg" /></a><a href="http://twitter.com/417_magazine"><img style="padding-left:3px;" src="/images/twitter.jpg" /></a><a id="pintrest-pin" class="pinit" href='{literal}javascript:void((function(){var e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)})());{/literal}'><img src="/images/elements/pinit.jpg" /></a><a href="http://itunes.apple.com/us/app/417-magazine/id384340110?mt=8"><img style="padding-left:3px;" src="/images/iphone.jpg" /></a>
</td>
<td>
    
      <div>
        <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
        <input type="hidden" name="cof" value="FORID:11" />
        <input type="hidden" name="ie" value="UTF-8" />
<div style="float:left; padding-left:10px;">
        <input style="border:1px solid;" type="text" name="q" size="28" />
</div>
</td>
<td>
<div style="float:right; display:inline;">
        <input type="submit" name="sa" value="search" />
       </div>
      </div>
  
</td></tr>
    </table></form>


<div id="site-tabs">
		<!--<a href="http://www.417ideahome.com"><img style="border:0px;" alt="417 Idea Home" src="/images/elements/tab_04.gif"></a>-->
		<a href="http://www.417bride.com"><img style="border:0px;" alt="417 Bride" src="/images/elements/tab_01.gif"></a>
		{if $publication.url=='/417-Home/'} <a href="http://417mag.com"><img style="border:0px;" alt="417 Magazine" src="/images/elements/tab_02alt.gif"></a> 
		{else}
		<a href="http://417homemagazine.com"><img style="border:0px;" alt="417 Home" src="/images/elements/tab_02.gif"></a> 
		{/if}
				
		<a href="https://417magdeals.com"><img style="border:0px;" alt="417 Deal of the Day" src="/images/elements/tab_03.gif"></a>
</div>
<div id="topbanner">
	
	<div class="clearfix" style="background-color:#fff; width:970px;">
		{if $publication.url=='/417-Home/'} <a href="http://www.417homemagazine.com" style="float:left; padding:15px 10px "><img width="196px;" src="/images/re/home-logo.jpg" alt="417 Magazine" /></a> 
		{else}
		<a href="http://www.417mag.com/" style="float:left; padding:10px"><img src="/images/elements/logo.jpg" alt="417 Magazine" /></a> 
		{/if}
		<div style="float:right; padding:10px;">
			
{include file="sponsorship.tpl"}
		</div>	
	</div>
</div>
	
	
<div id="navigation-container">	
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

</div>
 


<div id="subnav-container">
	<div style="height:20px; border-bottom:2px solid #7c7c7c; width:970px; background-color:#fff;">
   <table class="subnav">
	<tr>
	   <td><a style="color:#6b6b6b;" href="/417-Magazine/Store/Subscribe/">SUBSCRIBE</a></td>
	   <td><a style="color:#6b6b6b;" href="/417-Magazine/Advertise">ADVERTISE</a></td>
	   <td><a style="color:#6b6b6b;" href="/417-Magazine/About-417/Contact-Us/">CONTACT US</a></td>
	   <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/417-Digital-Edition/">DIGITAL EDITION</a></td>
          <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/Newsletter-Signup/">E-NEWSLETTER</a></td>
	   <td><a style="color:#6b6b6b;" href="http://www.417mag.com/417-Magazine/Video-Channel">VIDEOS</a></td>
          <td><a style="color:#6b6b6b;" href="http://www.417mag.com/Blogs/417-Blog/">BLOG</a></td>
           <td><a style="color:#d71921;" href="http://www.417mag.com/417-Magazine/Ultimate-Holiday-Shopping-Package/">ULTIMATE HOLIDAY SHOPPING PACKAGE</a></td>
	  <td><a style="color:#d71921;" href="http://www.417mag.com/whiskeyfest/">WHISKEY FEST</a></td>
	</tr>
   </table>
	
</div>

</div>