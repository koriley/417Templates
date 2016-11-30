
		<table class="mini_view monthday">
			<tr>
				<th>Sun</th>
				<th>Mon</th>
				<th>Tue</th>
				<th>Wed</th>
				<th>Thu</th>
				<th>Fri</th>
				<th>Sat</th>
			</tr>
			{foreach item=week from=$weeks}
				<tr>
				{foreach item=eventTs from=$week}
					{assign var="eventDate" value=$eventTs|date_format:"%Y-%m-%d"}
					{if $events[$eventDate] > 0}
						<td class="{if ($currentDate == $eventDate)}currentday{else}eventday{/if}">
					   	{if $calendar.calendarurl != ''}
							<a href="{$Page->path}?y={$eventTs|dateformat:'Y'}&m={$eventTs|dateformat:'m'}&d={$eventTs|dateformat:'d'}" title="{$events[$eventDate]} Events">
								{$eventTs|date_format:"%d"}
							</a>
						{else}
							<span>{$eventTs|date_format:"%d"}</span>
						{/if}
						</td>
					{else}
						<td class="{if ($eventTs == $currentDate)}currentday{else}calday{/if}">
							{$eventTs|date_format:"%d"}
						</td>
					{/if}
				{/foreach}
			</tr>
			{/foreach}
		</table>