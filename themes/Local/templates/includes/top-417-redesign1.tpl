<div id="header-top">
				
		

<div id="search-navbar">
	<div>{$smarty.now|date_format:"%B %d, %Y"}</div>			

	<div>{weatherinfo zipcode="65809"}
				<table id="weather-date">
					<tr>
						<td class="weather">
						{if $SERVERINFO.SERVER_PORT!=='443'}<a href="/417-Magazine/Weather/">{$weather.image}</a>{/if}
						<a href="/417-Magazine/Weather/">{$weather.temp}</a>
						</td> 						
					</tr>
				</table>
	</div>
	<div>
		<!--{if $Page->user->id==''}<a href="/417-Magazine/My-Account">Log In</a>{else}
		<a href="/417-Magazine/My-Account/index.php?action=logout">Log Off</a>{/if}-->&nbsp;&nbsp;<a href="/417-Magazine/Site-Map">Site Map</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/Store/Subscribe/index.php">Subscribe</a>&nbsp;&nbsp;|<!--&nbsp;&nbsp;<a href="/417-Magazine/My-Account">My Account</a>&nbsp;&nbsp;|-->&nbsp;&nbsp;<a href="/417-Magazine/About-417">About Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/About-417/Contact-Us/">Contact</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/Advertise">Advertise</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/My-Account/?mod=OpsGeobase&option=signup&cid=3&signupstep=products">Business</a>&nbsp;&nbsp;|
	</div>
		
		
<div style="margin-top:-5px; border:0px;"><form action="http://www.google.com/cse" id="cse-search-box" >
  				<div style="border:0px;">
    					<input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
    					<input type="hidden" name="ie" value="UTF-8" />
    					<input type="text" name="q" size="29" />
    					<input type="submit" name="sa" value="Search" />
  				</div>
			</form>
				<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script>
</div>	
</div>
</div>
<div id="topbanner" class="clearfix" style="width:1000px;">
		
<div style="float:right;">
<span style="vertical-align: middle;">
<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://badads.com/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=18");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=a045e766&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=18&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a045e766' border='0' alt='' /></a></noscript></span>
<table width="468" cellpadding="0" cellspacing="0">
	<tr>
		<td><a href="http://www.417mag.com/417-Magazine/Store/Subscribe/index.php"><img src="images/top-subscribe.jpg" /></a></td>
		<td><a href="http://www.417mag.com/417-Magazine/Newsletter-Signup/"><img src="images/top-newsy.jpg" /></a></td>
		<td><a href="http://www.pageturnpro.com/Whitaker%20Publishing/5149-May%202009/index.html#1"><img src="images/top-digi-ed.jpg" /></a></td>
	</tr>
</table>

</div>	

	<a href="http://www.417mag.com/"><img width="343px" height="137px" src="/images/re/logo.gif" alt="417 Magazine" /></a>

</div>

	
	{if $ishome<>''}
		{assign var='nav1' value='-on'}
	{elseif $Page->tags[49]<>'' || $article.tags[49]<>''}
		{assign var='tagname' value='Dining'}
		{assign var='tagSystemName' value='dining'}
		{assign var='nav2' value='-on'}
	{elseif $Page->tags[50]<>'' || $article.tags[50]<>''}
		{assign var='tagname' value='Calendar'}
		{assign var='tagSystemName' value='calendar'}
		{assign var='nav3' value='-on'}		
	{elseif $Page->tags[51]<>'' || $article.tags[51]<>''}
		{assign var='tagname' value='People Pics'}
		{assign var='tagSystemName' value='people-pics'}
		{assign var='nav4' value='-on'}		
	{elseif $Page->tags[52]<>'' || $article.tags[52]<>''}
		{assign var='tagname' value='417 Knows Best'}
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
	{elseif $publication.url=='/417-Home/'}
		{assign var='nav9' value='-on'}	
		{assign var='tagname' value='417 Home'}	
		{assign var='tagSystemName' value='home'}	
	  
				
	{elseif $isarchive<>''}
		{assign var='nav1' value='-on'}
	{/if}
<div id="navigation-container">	
<table id="nav">
	<tr>
		<td class="{$nav1}"><a class="menuButton{$nav1}" href="http://www.417mag.com"  id="bm18" onmouseover="buttonMouseover(event, 'm15');">Home</a></td>
		<td class="{$nav2}"><a class="menuButton{$nav2}" href="/417-Magazine/417-Dining/"  id="bm19" onmouseover="buttonMouseover(event, 'm12');">417 Dining</a></td>
		<td class="{$nav6}"><a class="menuButton{$nav6}" href="/417-Magazine/417-Shopping/"  id="bm15" onmouseover="buttonMouseover(event, 'm99');">417 Shopping</a></td>
		<td class="{$nav3}"><a class="menuButton{$nav3}" href="/417-Magazine/417-Calendar/"  id="bm12" onmouseover="buttonMouseover(event, 'm13');">417 Calendar</a></td>
		<td class="{$nav4}"><a class="menuButton{$nav4}" href="/417-Magazine/People-Pics/"  id="bm13" onmouseover="buttonMouseover(event, 'm99');">People Pics</a></td>
		<td class="{$nav5}"><a class="menuButton{$nav5}" href="/417-Magazine/Best-of-417/"  id="bm14" onmouseover="buttonMouseover(event, 'm14');">417 Knows Best</a></td>
		<td class="{$nav7}"><a class="menuButton{$nav7}" href="/417-Magazine/Store"  id="bm16" onmouseover="buttonMouseover(event, 'm99');">417 Store</a></td>
		<td class="{$nav8}"><a class="menuButton{$nav8}" href="http://{$SERVERINFO.SERVER_NAME}/417-Magazine/archive-index" id="bm17" onmouseover="buttonMouseover(event, 'm99');">Archive</a></td>
		<td class="{$nav9}"><a class="menuButton{$nav9}" href="/417-Home/"  id="bm10" onmouseover="buttonMouseover(event, 'm10');">417 Home</a></td>
		<td class="{$nav10}" id="last"><a class="menuButton{$nav10}" href="http://www.417bride.com"  id="bm11" onmouseover="buttonMouseover(event, 'm11');">417 Bride</a></td>
	</tr>
</table>
 
<div style="clear:both"></div>	

<!-- Sub Navigation 	
<div id="m99" class="menu" onMouseOver="menuMouseover(event)"></div>
<div id="m10" class="menu" onMouseOver="menuMouseover(event)">
<table class="subnav" cellpadding="0" cellspacing="0" border="0" align="right">
<tr>
<td><a class="menuItem" href="/417-Home/archive-index">Issue Archive</a></td>
<td><a class="menuItem" href="/417-Home/Idea-Home/">Idea Home</a></td>
<td><a class="menuItem" href="/417-Home/Fall-2006/Homes-Of-The-Year/">Special Awards</a></td>
<td><a class="menuItem" href="/417-Home/Resources">Resources</a></td>
</tr>
</table>


</div>	
<div id="m11" class="menu" onMouseOver="menuMouseover(event)">
<table class="subnav" cellpadding="0" cellspacing="0" border="0" align="right">
<tr>
<td><a class="menuItem" href="/417-Bride/archive-index">Issue Archive</a></td>
<td><a class="menuItem" href="/417-Bride/Bridal-Boutique">Bridal Boutique</a></td>
<td><a class="menuItem" href="/417-Bride/Party-Planning">Party Planning</a></td>
<td><a class="menuItem" href="/417-Bride/Real-Weddings">Real Weddings</a></td>
<td><a class="menuItem" href="/417-Bride/Resources">Resources</a></td>
</tr>
</table>
</div>		

	
<div id="m12" class="menu" onMouseOver="menuMouseover(event)">
<table class="subnav" cellpadding="0" cellspacing="0" border="0" align="left">
<tr>
<td><a class="menuItem" href="/417-Magazine/417-Dining/Dining-Guide/">Dining Guide</a></td>
<td><a class="menuItem" href="/media/Dining-Feedback/">Dining Feedback</a></td>
</tr>
</table>
</div>

<div id="m13" class="menu" onMouseOver="menuMouseover(event)">
<table class="subnav" cellpadding="0" cellspacing="0" border="0" align="center">
<tr>
<td><a class="menuItem" href="/417-Magazine/417-Calendar/Calendar/index.php">Search Calendar</a></td>
<td><a class="menuItem" href="http://www.marketvolt.com/CustApp/custnew.asp?WhereFrom=other&A=680&sa=680&AX=39163446&emailaddress=&submit=submit">Best of the Week Newsletter</a></td>
<td><a class="menuItem" href="/417-Magazine/417-Calendar/Submit-an-Event/">Submit Event</a></td>
</tr>
</table>
</div>	

<div id="m14" class="menu" onMouseOver="menuMouseover(event)">
<table class="subnav" cellpadding="0" cellspacing="0" border="0" align="center">
<tr>
<td><a class="menuItem" href="/417-Magazine/March-2008/Top-Doctors-2008/">Top Doctors</a></td>
<td><a class="menuItem" href="/Department-Archive/index.php?tagID=15">5 Best</a></td>
<td><a class="menuItem" href="/417-Magazine/February-2008/Best-of-417/">Best of 2008</a></td>
</tr>
</table>
</div>

<div id="m15" class="menu" onMouseOver="menuMouseover(event)">
<table class="subnav" cellpadding="0" cellspacing="0" border="0" align="left">
<tr>
<td><a class="menuItem" href="/417-Magazine/Site-Map/">Site Map</a></td>
<td><a class="menuItem" href="/417-Magazine/archive-index">Past Issues</a></td>
<td><a class="menuItem" href="/417-Magazine/411-on-417/">417 Video</a></td>

</tr>
</table>
</div>
-->

</div>



<!-- check what section we're in and display the proper menu -->

{if $publication.url=='/417-Home/'}<script type="text/javascript">startMenu('m10')</script>{/if}
{if $publication.url=='/417-Bride/'}<script type="text/javascript">startMenu('m11')</script>{/if}
{if $publication.url=='/417-Magazine/417-Dining/'}<script type="text/javascript">startMenu('m12')</script>{/if}
{if $publication.url=='/417-Magazine/417-Calendar/'}<script type="text/javascript">startMenu('m13')</script>{/if}
{if $publication.url=='/417-Magazine/Best-of-417/'}<script type="text/javascript">startMenu('m14')</script>{/if}
{if $publication.url=='/417-Magazine'}<script type="text/javascript">startMenu('m15')</script>{/if}

<!-- end check -->

{include file="sponsorship.tpl"}

