{literal}
<script type="text/javascript">
function fixSearch()
{
        if(document.searchform.site.selectedIndex==1)
        {
	        document.searchform.method="POST";
                document.searchform.action="http://sandiego.thegeoguide.com/browse/";
                document.searchform.search.value=document.searchform.query.value;
                document.searchform.submit();
        }
        return true;
}</script>
{/literal}
<div id="header-top">
		{if $SERVERINFO.SERVER_PORT!='443'}
		<div id="topleft">
			<div id="yourcity"><p class="yourlife">Your City. Your Life.</p><p class="yourmagazine">Your San Diego Magazine</p></div>
			<div id="date">{$smarty.now|date_format:"%B %e, %Y"}</div>
		</div>
		<div id="leaderboard">{oasad position='Top1'}</div>
	   {/if}
</div>

	<div id="header">
		<div id="branding">
			<div id="logo"><a href="/"><img src="{$images}/logo.gif" height="109" width="436" alt="San Diego Magazine" /></a></div>
			<div id="headerright">
				<div id="headerright-row1">
<a href="/media/San-Diego-Magazine/Subscriber-Center/">Subscriber Center</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/media/San-Diego-Magazine/Advertiser-Center/">Advertiser Center</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/media/San-Diego-Magazine/Custom-Publishing">Custom Publishing</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/media/San-Diego-Magazine/About-Us">About Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/media/San-Diego-Magazine/Sitemap">Sitemap</a>
				</div>
				<div id="headerright-row2">
					<div id="searchtop">
					<form method="get" name="searchform" action="/media/San-Diego-Magazine/Search/index.php">			
					<table border="0" cellspacing="0" cellpadding="0">					
						<tr>
						<td><input type="hidden" name="search" value="" /><input type="hidden" name="mod" value="CoreSearch" />
								<input name="query" type="text" class="searchform" size="23" value="{$Page->get('query')|default:$Page->get('q')}" /></td>
							<td><img src="{$images}/blank.gif" width="5" height="1" alt="" /></td>
							<td>
								<select name="site" class="searchform">
								<option value="1">San Diego Magazine</option>
								<option value="2">San Diego Guide</option>							
								</select>
							</td>
							<td><img src="{$images}/blank.gif" width="5" height="1" alt="" /></td>
							<td><input type="submit" value="Search" name="Search" onclick="fixSearch();" class="searchbutton"/></td>						
						</tr>			
					</table>
					</form>	
					</div>
				</div>
			</div>
		</div>
	{if $Page->tags[35]<>'' || $article.tags[35]<>''}
		{assign var='tagname' value='Dining'}
		{assign var='nav2' value='-on'}
	{elseif $Page->tags[36]<>'' || $article.tags[36]<>''}
		{assign var='tagname' value='Agenda'}
		{assign var='nav3' value='-on'}		
	{elseif $Page->tags[37]<>'' || $article.tags[37]<>''}
		{assign var='tagname' value='San Diego Covered'}
		{assign var='nav4' value='-on'}		
	{elseif $Page->tags[39]<>'' || $article.tags[39]<>''}
		{assign var='tagname' value='Best Of'}
		{assign var='nav5' value='-on'}
	{elseif $Page->tags[44]<>'' || $article.tags[44]<>''}
		{assign var='tagname' value='Events'}
		{assign var='nav6' value='-on'}		
	{elseif $Page->tags[45]<>'' || $article.tags[45]<>''}
		{assign var='tagname' value='Real Estate'}		
		{assign var='nav7' value='-on'}	
	{elseif $publication.url=='/media/San-Diego-Magazine/At-Home/'}
		{assign var='nav8' value='-on'}	
	{elseif $publication.url=='/media/San-Diego-Magazine/Travels/'}
		{assign var='nav9' value='-on'}	
	{elseif $publication.url=='/media/San-Diego-Magazine/Charitable-Events/'}
		{assign var='nav10' value='-on'}	
	{elseif $publication.url=='/media/San-Diego-Magazine/Medical-Guide/'}
		{assign var='nav11' value='-on'}		
	{elseif $isarchive<>''}
		{assign var='nav1' value='-on'}
	{/if}		
		<table id="nav">
			<tr>
				<td><a class="menuButton{$nav1}" href="/media/San-Diego-Magazine/archive-index">Archive</a></td>
				<td><a class="menuButton{$nav2}" href="/media/San-Diego-Magazine/Dining">Dining</a></td>
				<td><a class="menuButton{$nav3}" href="/media/San-Diego-Magazine/Agenda">Agenda</a></td>
				<td><a class="menuButton{$nav4}" href="/media/San-Diego-Magazine/San-Diego-Covered">San Diego Covered</a></td>
				<td><a class="menuButton{$nav5}" href="/media/San-Diego-Magazine/Best-Of">Best Of</a></td>
				<td><a class="menuButton{$nav6}" href="/media/San-Diego-Magazine/Events">Events</a></td>
				<td><a class="menuButton{$nav7}" href="/media/San-Diego-Magazine/Real-Estate">Real Estate</a></td>
				<td class="supplement"><a class="menuButton-supp{$nav8}" href="/media/San-Diego-Magazine/At-Home">At Home</a></td>
				<td class="supplement"><a class="menuButton-supp{$nav9}" href="/media/San-Diego-Magazine/Travels/">Travels</a></td>														
				<td class="supplement"><a class="menuButton-supp{$nav10}" href="/media/San-Diego-Magazine/Charitable-Events/">Charitable Events</a></td>														
				<td class="supplement" id="last"><a class="menuButton-supp{$nav11}" href="/media/San-Diego-Magazine/Medical-Guide/">Medical Guide</a></td>														
			</tr>
		</table>

</div>

{include file="sponsorship.tpl"}

