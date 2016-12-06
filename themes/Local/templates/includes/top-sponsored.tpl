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
	{elseif $Page->tags[274]<>'' || $article.tags[167]<>''}
		{assign var='nav9' value='-on'}	
		{assign var='tagname' value='Events and Contests'}	
		{assign var='tagSystemName' value='events-and-contests'}	
	  
				
	{elseif $isarchive<>''}
		{assign var='nav1' value='-on'}
	{/if}
	
<table style="float:left; padding-bottom:0px;">
<tr>
<td>
<a href="http://www.facebook.com/417mag"><img src="/images/fb.gif" /></a><a href="http://twitter.com/417_magazine"><img style="padding-left:3px;" src="/images/twitter.gif" /></a>
</td>
<td>
    <form action="http://www.417mag.com/417-Magazine/Search-Results/">
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
        <input type="image" name="sa" src="/images/elements/search.gif" border="0">
       </div>
      </div>
    </form>
</td></tr>
  </table>

<div id="site-tabs">
		<a href="http://417bride.com"><img style="border:0px;" alt="417 Bride" src="/images/elements/tab_01.gif"></a>
		{if $publication.url=='/417-Home/'} <a href="http://417mag.com"><img style="border:0px;" alt="417 Magazine" src="/images/elements/tab_02alt.gif"></a> 
		{else}
		<a href="http://417homemagazine.com"><img style="border:0px;" alt="417 Home" src="/images/elements/tab_02.gif"></a> 
		{/if}
				
		<a href="http://bransonvacationmag.com"><img style="border:0px;" alt="Branson Vacation Magazine" src="/images/elements/tab_03.gif"></a>
	</div>
<div id="topbanner">
	
	<div class="clearfix" style="background-color:#fff; width:970px;">
		{if $publication.url=='/417-Home/'} <a href="http://www.417homemagazine.com" style="float:left; padding:15px 10px "><img width="196px;" src="/images/re/home-logo.jpg" alt="417 Magazine" /></a> 
		{else}
		<a href="http://www.417mag.com/" style="float:left; padding:10px"><img src="/images/elements/logo.jpg" alt="417 Magazine" /></a> 
		{/if}
		<div style="float:right; padding:10px;">
			<iframe id='ac774e36' name='ac774e36' src='http://badads.com/openx/www/delivery/afr.php?n=ac774e36&amp;zoneid=35&amp;cb=INSERT_RANDOM_NUMBER_HERE' framespacing='0' frameborder='no' scrolling='no' width='728' height='90'><a href='http://badads.com/openx/www/delivery/ck.php?n=ac14289b&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=35&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ac14289b' border='0' alt='' /></a></iframe>
<script type='text/javascript' src='http://badads.com/openx/www/delivery/ag.php'></script>		</div>	
	</div>
	</div>
	
	
<div id="navigation-container">	
<table id="nav">
	<tr>
		<td class="{$nav5}"><a class="menuButton{$nav5}" href="/417-Magazine/Best-of-417/"  id="bm14" onmouseover="buttonMouseover(event, 'm14');">Best of 417</a></td>
		<td class="{$nav2}"><a class="menuButton{$nav2}" href="/417-Magazine/417-Dining/"  id="bm19" onmouseover="buttonMouseover(event, 'm12');">Dining</a></td>
		<td class="{$nav6}"><a class="menuButton{$nav6}" href="/417-Magazine/417-Shopping/"  id="bm15" onmouseover="buttonMouseover(event, 'm99');">Shopping</a></td>
		<td class="{$nav9}"><a class="menuButton{$nav9}" href="/417-Magazine/Events-Contests/"  id="bm10" onmouseover="buttonMouseover(event, 'm10');">Events & Contests</a></td>
		<td class="{$nav3}"><a class="menuButton{$nav3}" href="/417-Magazine/417-Calendar/"  id="bm12" onmouseover="buttonMouseover(event, 'm13');">Calendar</a></td>
		<td class="{$nav4}"><a class="menuButton{$nav4}" href="/417-Magazine/People-Pics/"  id="bm13" onmouseover="buttonMouseover(event, 'm99');">Photos</a></td>
		<td class="{$nav7}"><a class="menuButton{$nav7}" href="/417-Magazine/Store"  id="bm16" onmouseover="buttonMouseover(event, 'm99');">Store</a></td>
		<td class="{$nav8}"><a class="menuButton{$nav8}" href="http://{$SERVERINFO.SERVER_NAME}/417-Magazine/archive-index" id="bm17" onmouseover="buttonMouseover(event, 'm99');">Archive</a></td>
		
		
	</tr>
</table>

</div>
 
<div style="clear:both"></div>	

<div id="subnav-container">
	<div style="height:20px; border-bottom:2px solid #7c7c7c; width:970px; background-color:#fff;">
   <table class="subnav" >
	<tr>
	   <td><a href="/417-Magazine/Store/Subscribe/417-Magazine-and-417-Home/index.php">SUBSCRIBE</a></td>
	   <td><a href="/417-Magazine/Advertise">ADVERTISE</a></td>
	   <td><a href="/417-Magazine/About-417">ABOUT US</a></td>
	   <td><a href="/417-Magazine/About-417/Contact-Us/">CONTACT</a></td>
	   <td><a href="/417-Magazine/Newsletter-Signup/">E-NEWSLETTERS</a></td>
	   <td><a target="_blank" href="/417-Magazine/Digital-Archive/index.php?previewmode=on">DIGITAL EDITION</a></td>	   
          <td><a href="http://417bride.com">417 BRIDE</a></td>
	   <td><a href="http://417homemagazine.com">417 HOME</a></td>
	</tr>
   </table>
	</div>



</div>

