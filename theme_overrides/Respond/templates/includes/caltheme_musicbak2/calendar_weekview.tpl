{addcss file="calendar-week-view.css"}
{addjs file="/core/media/js/calendar.js"}
{addjs file="/core/media/js/Rivista_ajax.js"}

{if $Page->params.category != ""}
	{assign var="category" value=$Page->params.categoryfilter}
{/if}

{strip}
<div class="weekly-calendar" id="calendar_{$calendar.id}" calendar_category="{$category}">
	<h3>{$currentdate|dateformat:"%B %Y"}</h3>
	<p class="calendar-controls">
		<a href="#" class="load_calendar previous" calendar_request_date="{$predate|dateformat:"Y:m:d"}" calendar_view="week_view" title="{$predate|dateformat:"F d, Y"}">&laquo; Previous Week</a>
		<a href="#" class="load_calendar current" calendar_request_date="{$now|dateformat:"Y:m:d"}" calendar_view="week_view" title="{$now|dateformat:"F d, Y"}">Current Week</a>
		<a href="#" class="load_calendar next" calendar_request_date="{$nextdate|dateformat:"Y:m:d"}" calendar_view="week_view" title="{$nextdate|dateformat:"F d, Y"}">Next Week &raquo;</a>
	</p>
	<div class="weekly-calendar-wrapper">
		<div class="eventContainer">
			<table class="week-list weekly-menu" id="weekly-menu-{$calendar.id}">
				<tr>
					{foreach item="event" key="key" from=$data}
					<td>
						<a href="javascript:void(0)" title="{$key}" onclick="showCalendarItem({$calendar.id},this); return false;" {if $key|capitalize == $now|dateformat:'%a'}class="selected"{/if}>{$key|capitalize}<br />{$daydate[$key]|dateformat:"d"}</a>
					</td>
					{/foreach}
				</tr>
			</table>
			<div class="week-container" id="week-{$calendar.id}">
			{foreach item=event key=key from=$data}
				<div id="{$key}" class="day {if $key|capitalize == $now|dateformat:'%a'}selected{/if}">
				{if $event[0].title == "[ No events ]"}<h4 class="no-events">No events</h4>{else}
				<table class="event-list">
					{foreach item=item from=$event}
						{if $item.title<>"[ No events ]"}
						<tr>
							<td class="time">
							{$item.starttime}{if $item.starttime != $item.endtime} - {$item.endtime}{/if}</td>
							<td class="event">
										<h4><a href="{$calendar.calendarurl}index.php?view=view_event&itm={$item.id}">{$item.title}</a></h4>
							    		<p>{$item.description|truncate:200:"...":false}</p>
							    		{if $item.cost<>''}<p><strong>Cost: {$item.cost}</strong></p>{/if}
							    		<p><strong>Where?</strong><br />
										{if $item.location <>''}{$item.location}<br />{/if}
										{if $item.address<>''}{$item.address}<br />{/if}
										{if $item.address2<>''}{$item.address2}<br />{/if}
										{if $item.city<>''}{$item.city}{/if}{if $item.state<>''},&nbsp;{$item.state}{/if}{if $item.zip<>''}&nbsp;&nbsp;{$item.zip}{/if}
										<br />
										{if $item.address<>''}
										<a href="http://maps.google.com/maps?q={$item.address}+{$item.address2},+{$item.city},+{$item.state}+{$item.zip}&hl=en" target="new"><b>View map &raquo;</b></a>
										{/if}
										</p>
										{if $item.sponsor || $item.phone || $item.contactname || $item.url}
										<p><strong>For more information:</strong><br />
												{if $item.sponsor}Sponsor: {$item.sponsor}<br />{/if}
												{if $item.phone}Telephone: {$item.phone|format:"ddd-ddd-dddd"}<br />{/if}
												{if $item.contactname}Contact name: {$item.contactname}<br />{/if}
												{if $item.contactemail}Email: {$item.contactemail}<br />{/if}
												{assign var=$item.url value=$item.url|replace:'http://',''}
												{if $item.url<>'' && $item.url<>'http://'}<strong><a href="{if ereg("http",$item.url)}{$item.url}{else}http://{$item.url}{/if}" target="_blank">Website &raquo;</a></strong>{/if}
										</p>
										{/if}
							</td>
						</tr>
						{/if}
					{/foreach}
				</table>
				{/if}
				</div>
			{/foreach}
			</div>
		</div>
		<div class="ajaxloader" style="display:none;">
		</div>
	</div>
</div>
{/strip}

<script>
	RivistaAjax.bindCalendarEvents({$calendar.id},'{$calendarpageid}','{$publication.id}');
</script>