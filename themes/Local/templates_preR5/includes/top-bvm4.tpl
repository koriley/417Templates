{if $Page->tags[216]<>'' || $article.tags[216]<>''}
		{assign var='tagname' value='Home'}
		{assign var='tagSystemName' value='home'}
		{assign var='nav1' value='selected'}
       {elseif $Page->tags[208]<>'' || $article.tags[208]<>''}
		{assign var='tagname' value='Entertainment'}
		{assign var='tagSystemName' value='entertainment'}
		{assign var='nav2' value='selected'}
	{elseif $Page->tags[203]<>'' || $article.tags[53]<>''}
		{assign var='tagname' value='Subscribe'}
		{assign var='tagSystemName' value='subscribe'}
		{assign var='nav3' value='selected'}
	{elseif $Page->tags[202]<>'' || $article.tags[202]<>''}
		{assign var='tagname' value='Outdoors'}
		{assign var='tagSystemName' value='outdoors'}
		{assign var='nav4' value='selected'}		
	{elseif $Page->tags[204]<>'' || $article.tags[204]<>''}
		{assign var='tagname' value='Lodging'}
		{assign var='tagSystemName' value='lodging'}
		{assign var='nav5' value='selected'}		
	{elseif $Page->tags[205]<>'' || $article.tags[205]<>''}
		{assign var='tagname' value='Shopping and Dining'}
		{assign var='tagSystemName' value='best-of'}
		{assign var='nav6' value='selected'}
	{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
		{assign var='tagname' value='Video'}
		{assign var='tagSystemName' value='video'}
		{assign var='nav7' value='selected'}
	{elseif $Page->tags[53]<>'' || $article.tags[53]<>''}
		{assign var='tagname' value='Subscribe'}
		{assign var='tagSystemName' value='subscribe'}
		{assign var='nav8' value='selected'}				
	{elseif $isarchive<>''}
		{assign var='nav1' value='selected'}
	{/if}	
	<div id="container">
		<ul id="nav">
                     <li id="thome"><a href="/Branson-Vacation-Magazine/" class="{$nav1}">Home</a>
                     <li id="tentertainment"><a href="/Branson-Vacation-Magazine/Entertainment/" class="{$nav2}">Entertainment</a>
                     <li id="tattractions"><a href="/Branson-Vacation-Magazine/Attractions/" class="{$nav3}">Attractions</a>
			<li id="toutdoors"><a href="/Branson-Vacation-Magazine/Outdoors/" class="{$nav4}">Outdoors</a>
			<li id="tlodging"><a href="/Branson-Vacation-Magazine/Lodging/" class="{$nav5}">Lodging</a>
                     <li id="tshopping"><a href="/Branson-Vacation-Magazine/Dining-and-Shopping/" class="{$nav6}">Shopping + Dining</a>   
			<li id="tvideo"><a href="/Branson-Vacation-Magazine/Sponsor-Videos/" class="{$nav7}">Videos</a>                  
			<li id="tsubscribe"><a href="/Branson-Vacation-Magazine/Subscribe/" class="{$nav8}">Subscribe</a>
		</ul>
		<table style="float:right;">
		<tr>
			<td id="time-date">{$smarty.now|date_format:"%B %d, %Y"} &nbsp;&nbsp;&nbsp;{$smarty.now|date_format:"%l:%M %p"}</td>
              	<td style="padding-right:5px;"><img src="/images/bvm/light.png" /></td>
		</tr>
		</table>
	</div>

	<div>
		<div style="float:right; padding-right:10px;">
			<form action="http://www.google.com/cse" id="cse-search-box" >
  				<div style="border:0px;">
    					<input type="hidden" name="cx" value="009641437717294980773:s4oawy9eu3c" />
    					<input type="hidden" name="ie" value="UTF-8" />
    					<input type="text" name="q" size="20" />
    					<input type="submit" name="sa" value="Search" />
  				</div>
			</form>
				<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script>
		</div>

		<div style="float:right; clear:both; padding-top:20px; padding-right:10px;">
			<iframe id='a483b795' name='a483b795' src='http://badads.com/openx/www/delivery/afr.php?n=a483b795&amp;zoneid=25&amp;cb=INSERT_RANDOM_NUMBER_HERE' framespacing='0' frameborder='no' scrolling='no' width='468' height='60'><a href='http://badads.com/openx/www/delivery/ck.php?n=ac7c6307&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://badads.com/openx/www/delivery/avw.php?zoneid=25&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ac7c6307' border='0' alt='' /></a></iframe>
			<script type='text/javascript' src='http://badads.com/openx/www/delivery/ag.php'></script></div>
			<img src="/images/bvm/bvm-logo.gif" />
		</div>	

	



