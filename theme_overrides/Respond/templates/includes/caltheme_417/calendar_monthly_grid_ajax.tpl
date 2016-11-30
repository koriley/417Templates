<ul class="monthly_calendar_head">
		<li>{$strings_calendarview_monthly_sunday}</li>
		<li>{$strings_calendarview_monthly_monday}</li>
		<li>{$strings_calendarview_monthly_tuesday}</li>
		<li>{$strings_calendarview_monthly_wednesday}</li>
		<li>{$strings_calendarview_monthly_thursday}</li>
		<li>{$strings_calendarview_monthly_friday}</li>
		<li>{$strings_calendarview_monthly_saturday}</li>
</ul>
<table class="mini_view monthday">
	{foreach item=week from=$weeks}
		<tr>
		{foreach item=eventTs from=$week}
			{assign var="eventDate" value=$eventTs|date_format:"%Y-%m-%d"}
			{if $events[$eventDate] > 0}
				<td class="{if ($currentDate == $eventDate)}currentday{else}eventday{/if}">
			   	{if $calendar.calendarurl != ''}
					<a href="#" class="load_calendar" calendar_request_date="{$eventTs|dateformat:"Y:m:d"}" calendar_view="day_view" template="{$calendarTemplate}" title="{$events[$eventDate]} Events">
						{$eventTs|date_format:"%d"}
					</a>
				{else}
					<span>{$eventTs|date_format:"%d"}</span>
				{/if}
				</td>
			{else}
				<td class="{if ($eventTs == $currentDate)}currentday{else}calday{/if}">
					<span>{$eventTs|date_format:"%d"}</span>
				</td>
			{/if}
		{/foreach}
	</tr>
	{/foreach}
</table>