
<div id="header-top"> {weatherinfo zipcode="65809"}
  <table id="weather-date">
    <tr>
      <td valign="middle" class="weather"> {if $SERVERINFO.SERVER_PORT!=='443'}<a href="/417-Magazine/Weather/">{$weather.image}</a>{/if} <a href="/417-Magazine/Weather/">{$weather.temp}</a><br>
        <br>
        <div align="center"> <a href="/417-Magazine/Weather/" style="font-size:9px;font-family:arial">[More Info]</a> </div></td>
      <td ><img src="/images/417Sub_WebHeader.jpg" border="0" usemap="#imageMap" />
        <map name="imageMap" id="imageMap">
          <area shape="rect" coords="17,38,139,55" href="https://417mag.com/417-Magazine/Store/Subscribe/index.php" target="_blank" />
          <area shape="rect" coords="17,55,138,71" href="http://www.417mag.com/417-Magazine/Newsletter-Signup/index.php?previewmode=on" />
          <area shape="rect" coords="19,71,139,89" href="http://www.zinio.com/express3?issn=417-001" target="_blank" />
        </map></td>
    </tr>
  </table>
  <div id="leaderboard">
    <script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://badads.com/openx/www/delivery/ajs.php':'http://badads.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=2");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://badads.com/openx/www/delivery/ck.php?n=a746f8f1&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=2&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a746f8f1' border='0' alt='' /></a></noscript>
 </div>
</div>
<div id="search-navbar">
  <form method="get" name="searchform" action="/417-Magazine/Search/index.php">
    <table border="0" cellspacing="0" cellpadding="0" id="search-form">
      <tr>
        <td><input type="hidden" name="search" value="" />
          <input type="hidden" name="mod" value="CoreSearch" />
          <input type="hidden" name="urlprefix" value="/" />
          <input name="query" type="text" class="searchform" size="23" value="{$Page->get('query')|default:$Page->get('q')}" /></td>
        <td><img src="/images/blank.gif" width="5" height="1" alt="" /></td>
        <td><input type="submit" value="Search" name="Search" onClick="fixSearch();" class="searchbutton"/></td>
      </tr>
    </table>
  </form>
  <div id="headerright"> {if $Page->user->id==''}
    <!--<a href="/417-Magazine/My-Account">Log In</a>{else}
<a href="/417-Magazine/My-Account/index.php?action=logout">Log Off</a>{/if}&nbsp;&nbsp;-->
    &nbsp;&nbsp;<a href="/417-Magazine/Site-Map">Site Map</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/Store/Subscribe/index.php">Subscribe</a>&nbsp;&nbsp;|
    <!--&nbsp;&nbsp;<a href="/417-Magazine/My-Account">My Account</a>&nbsp;&nbsp;|-->
    &nbsp;&nbsp;<a href="/417-Magazine/About-417">About Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/About-417/Contact-Us/">Contact</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/Advertise">Advertise</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/My-Account/?mod=OpsGeobase&option=signup&cid=3&signupstep=products">Business</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/417-Magazine/About-417/Work-with-Us/">Work With Us</a></div>
</div>
<div id="topbanner" class="clearfix">
  <div style="width:140px; height:96px; float:right; padding:0">
    <!--anigif-->
  </div>
  <!--<div class="period">{$issue.period}&nbsp;{$issue.year}</div>-->
  {calGetLatestEvents calendarid=3 order="ops_calendareventdate.startdate ASC"}
  
  {section name=x loop=$events max=1}
  <!--{$events[x].startdate|date_format:$config.shortdateformat}-->
  {if $events[x].startdate|date_format:$config.shortdateformat == $smarty.now|date_format:$config.shortdateformat}
  <div class="tip-of-the-day">
    <div id="image"> <a href="/417-Magazine/417-Calendar/Best-of-the-Day/?view=view_event&amp;itm={$events[x].id}"><img src="/BestOfTheDay_web_match.gif" align="left"></a> </div>
    <h4>&nbsp;&nbsp;{$smarty.now|date_format:"%A, %B %e, %Y"}</h4>
    <a class="tip-archive" href="/417-Magazine/417-Calendar/Best-of-the-Day/index.php?search=&categoryfilter=All&startmonth=7&startday=1&startyear=2007&endmonth={$smarty.now|date_format:'%m'}&endday={$smarty.now|date_format:'%d'}&endyear={$smarty.now|date_format:'%Y'}&view=search_event&submit=Search">Archive &raquo;</a>
    <div class="tips">
      <h6>&nbsp;&nbsp;<a href="/417-Magazine/417-Calendar/Best-of-the-Day/?view=view_event&amp;itm={$events[x].id}">{$events[x].title}</a></h6>
      {if $events[x].photodescription == ''}
      <p>&nbsp;&nbsp;{$events[x].description}</p>
      {else}
      <p>&nbsp;&nbsp;{$events[x].photodescription}</p>
      {/if} </div>
    <div>
      <form action="http://www.google.com/cse" id="cse-search-box">
        <div>
          <input type="hidden" name="cx" value="009641437717294980773:4jknt-xgru8" />
          <input type="hidden" name="ie" value="UTF-8" />
          <input type="text" name="q" size="31" />
          <input type="submit" name="sa" value="Search" />
        </div>
      </form>
      <script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script>
    </div>
  </div>
  {/if}
  {/section}

{if $publication.url=='/417-Home/'} <a href="http://www.417homemagazine.com" style="float:left; padding:0px"><img src="/images/re/home-logo.jpg" alt="417 Magazine" /></a> </div>
{else}
<a href="http://www.417mag.com/" style="float:left; padding:0px"><img src="/images/logo.gif" alt="417 Magazine" /></a> </div>
{/if}

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
      <td class="{$nav1}"><a class="menuButton{$nav1}" href="http://www.417mag.com"  id="bm18" onMouseOver="buttonMouseover(event, 'm15');">Home</a></td>
      <td class="{$nav2}"><a class="menuButton{$nav2}" href="/417-Magazine/417-Dining/"  id="bm19" onMouseOver="buttonMouseover(event, 'm12');">417 Dining</a></td>
      <td class="{$nav6}"><a class="menuButton{$nav6}" href="/417-Magazine/417-Shopping/"  id="bm15" onMouseOver="buttonMouseover(event, 'm99');">417 Shopping</a></td>
      <td class="{$nav3}"><a class="menuButton{$nav3}" href="/417-Magazine/417-Calendar/"  id="bm12" onMouseOver="buttonMouseover(event, 'm13');">417 Calendar</a></td>
      <td class="{$nav4}"><a class="menuButton{$nav4}" href="/417-Magazine/People-Pics/"  id="bm13" onMouseOver="buttonMouseover(event, 'm99');">People Pics</a></td>
      <td class="{$nav5}"><a class="menuButton{$nav5}" href="/417-Magazine/Best-of-417/"  id="bm14" onMouseOver="buttonMouseover(event, 'm14');">417 Knows Best</a></td>
      <td class="{$nav7}"><a class="menuButton{$nav7}" href="/417-Magazine/Store"  id="bm16" onMouseOver="buttonMouseover(event, 'm99');">417 Store</a></td>
      <td class="{$nav8}"><a class="menuButton{$nav8}" href="http://{$SERVERINFO.SERVER_NAME}/417-Magazine/archive-index" id="bm17" onMouseOver="buttonMouseover(event, 'm99');">Archive</a></td>
      <td class="{$nav9}"><a class="menuButton{$nav9}" href="/417-Home/"  id="bm10" onMouseOver="buttonMouseover(event, 'm10');">417 Home</a></td>
      <td class="{$nav10}" id="last"><a class="menuButton{$nav10}" href="http://www.417bride.com"  id="bm11" onMouseOver="buttonMouseover(event, 'm11');">417 Bride</a></td>
    </tr>
      </table>
  <div style="clear:both"></div>
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
</div>
    <!-- check what section we're in and display the proper menu -->
{if $publication.url=='/417-Home/'}
<script type="text/javascript">startMenu('m10')</script>
{/if}
{if $publication.url=='/417-Bride/'}
<script type="text/javascript">startMenu('m11')</script>
{/if}
{if $publication.url=='/417-Magazine/417-Dining/'}
<script type="text/javascript">startMenu('m12')</script>
{/if}
{if $publication.url=='/417-Magazine/417-Calendar/'}
<script type="text/javascript">startMenu('m13')</script>
{/if}
{if $publication.url=='/417-Magazine/Best-of-417/'}
<script type="text/javascript">startMenu('m14')</script>
{/if}
{if $publication.url=='/417-Magazine'}
<script type="text/javascript">startMenu('m15')</script>
{/if}
<!-- end check -->
{include file="sponsorship1.tpl"} 