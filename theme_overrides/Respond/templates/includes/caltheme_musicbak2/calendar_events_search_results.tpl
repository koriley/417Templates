		{if count($calendar.events)>0}
		<table id="calendar-listings">
		{assign var="id" value="0"}
		{section name="x" loop=$calendar.events max=10 start=$Page->params.sievents|default:0}
		{strip}
		{assign var="event" value=$calendar.events[x]}
			<tr>
				<td class="eventlisting" valign="top">
					{*<h3><a href="{pageurl view="view_event" itm=$calendar.events[x].id}">{$calendar.events[x].title}</a></h3>*}
					{pageurl assign='eventUrl' reset=true name=$event.title|nametopath event=$event.id filter='seo_url_filter'}
					<h3><a href="{$eventUrl}">{$event.title}</a></h3>
					<h4>{$event.eventdate|dateformat:"%b %e, %Y"}{if $event.enddate!=$event.startdate} - {$event.enddate|dateformat:"%b %e, %Y"}{/if}</h4>
					{if $display_recur_info}{include file="calendar_eventdatedetails.tpl"}{/if}
					<p>{if $event.description != ''}{$event.description|strip_tags:false|truncate:400}</p>{/if}
					<p><strong><a href="{$eventUrl}">View event details...</a></strong></p>
				</td>
			</tr>
		{/strip}
		{/section}
		</table>
		{else}
		<p>{$calendar_listevents_noresults}</p>
		{/if}
		
		{if $Page->params.mode !="print"}
		{pager name="events" style="link" data=$calendar.events maxpages=10 rowsperpage=10}
		{/if}