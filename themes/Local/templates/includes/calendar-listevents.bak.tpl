<div id="calendar-main">
	{include file="pagetools.tpl"}
	<h1>{$Page->title}</h1>
		{if $pagecontent<>''}{$pagecontent}{/if}
		{if count($calendar.events)>0}
		<table id="calendar-listings">
		{assign var="id" value="0"}
		{section name="x" loop=$calendar.events max=10 start=$Page->params.sievents|default:0}
		{strip}
			<tr>
				<td class="eventlisting" valign="top">
					<h4>{$calendar.events[x].startdate|date_format}{if $calendar.events[x].enddate!=$calendar.events[x].startdate} - {$calendar.events[x].enddate|date_format}{/if}</h4>
					<h3><a href="{pageurl view="view_event" itm=$calendar.events[x].id}">{$calendar.events[x].title}</a></h3>
					<p>{if $calendar.events[x].description<>''}{$calendar.events[x].description|chopwords}</p>{/if}
					<p><strong><a href="{pageurl view="view_event" itm=$calendar.events[x].id}">View event details...</a></strong></p>
				</td>
			</tr>
		{/strip}
		{/section}
		</table>
		{else}
		<p>Sorry, no events matched your search criteria</p>
		{/if}
		<div id="pager">{pager name="events" style="link" data=$calendar.events maxpages=10 rowsperpage=10}</div>
</div>
<div id="calendar-sidebar">
			{if istrue($calendar.ispublic)}
			<ul class="child-page-menu">
				<li><a href="?view=new_event">Submit an event &raquo;</a></li>
			</ul>
			{/if}
			{if $calendar.id != 3}
			<div id="calendar-search">
			<h2>Search "{$calendar.title}"</h2>
			<form name="event" method="get">
			<table>
				<tr>
					<td>Search for:</td><td><input type="input" id="search" name="search" value="{$Page->params.search}" /></td>
				</tr>
				<tr>
					<td>Category:</td><td>{picklist name="categoryfilter" list=$categories selected=$category displayfield="title" keyfield="title"}</td>
				</tr>
					<td colspan="2">
					Start date / year<br />
					{picklist name="startmonth" function="months"  selected=$startmonth} /
					{picklist name="startday" function="numbers" start="1" end="31"  selected=$startday} /
					{picklist name="startyear" function="years" selected=$startyear}	
					</td>
				<tr>
					<td colspan="2">
					End date / year<br />
					{picklist name="endmonth" function="months"  selected=$endmonth} /
					{picklist name="endday" function="numbers"  start="1" end="31" selected=$endday} /
					{picklist name="endyear" function="years" selected=$endyear}	
					</td>
				</tr>
					<td colspan="2" class="last">
					<input type=hidden name="view" value="search_event">
					<input type="submit" name="submit" value="Search" id="formbutton">
					</td>
				</tr>
			</table>
			</form>
			</div>
			{/if}
		{loadModules position="right"}
</div>
