{if $ishome<>''}
              {assign var='tagSystemName' value='homepage'}
		{assign var='nav1' value='-on'}
{elseif $Page->tags[313]<>'' || $article.tags[313]<>''}
		{assign var='tagName' value='Best Of Article'}
		{assign var='tagSystemName' value='best-article'}        
		
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
	{elseif $Page->tags[274]<>'' || $article.tags[167]<>''}
		{assign var='nav9' value='-on'}	
		{assign var='tagname' value='Events and Contests'}	
		{assign var='tagSystemName' value='events-and-contests'}
       
	{/if}

<div class="sponsorship" id="{$tagSystemName}_sponsor">
	
{if $tagSystemName == "people-pics"}
<!-- peoplePics_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}

{elseif $tagSystemName == "wheres-417"}
<!-- wheres417_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $tagSystemName == "10mbPage"}
<!--/* OpenX Javascript Tag v2.8.10 */-->

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://secure421.hostgator.com/~gocoupon/openx/www/delivery/ajs.php':'http://gonsave.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=57");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a48262a9&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?zoneid=57&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a48262a9' border='0' alt='' /></a></noscript>

{elseif $tagSystemName == "homepage"}
<!-- 417_leaderBoard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $tagSystemName == "best-of"}
<!-- best_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $tagSystemName == "calendar"}
<!-- calendar_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $tagSystemName == "shopping"}
<!-- shopping_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}

{elseif $tagSystemName == "events-and-contests"}
<!-- ec_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $publication.url=='/417-Home/'}
 <!--/* OpenX Javascript Tag v2.8.10 */-->

<script type='text/javascript'><!--//<![CDATA[
   var m3_u = (location.protocol=='https:'?'https://secure421.hostgator.com/~gocoupon/openx/www/delivery/ajs.php':'http://gonsave.com/openx/www/delivery/ajs.php');
   var m3_r = Math.floor(Math.random()*99999999999);
   if (!document.MAX_used) document.MAX_used = ',';
   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
   document.write ("?zoneid=5");
   document.write ('&amp;cb=' + m3_r);
   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
   document.write ("&amp;loc=" + escape(window.location));
   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
   if (document.context) document.write ("&context=" + escape(document.context));
   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
   document.write ("'><\/scr"+"ipt>");
//]]>--></script><noscript><a href='http://gonsave.com/openx/www/delivery/ck.php?n=a357b870&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?zoneid=5&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a357b870' border='0' alt='' /></a></noscript>

{elseif $tagSystemName == "best-article"}
<!-- best_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $tagSystemName == "dining"}
<!-- dining_leaderboard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>
{/literal}
{elseif $tagSystemName == "restaurantMonth"}
<a href='http://gonsave.com/openx/www/delivery/ck.php?n=adb68087&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://gonsave.com/openx/www/delivery/avw.php?zoneid=68&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=adb68087' border='0' alt='' /></a>
{elseif $tagSystemName == ""}
<!-- 417_leaderBoard -->
{literal}
<script type='text/javascript'>
GA_googleFillSlot("417_skyscraper2");
</script>

{/literal}
{/if}
</div>
