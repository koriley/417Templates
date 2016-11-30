<div class="dayevents" id="events_{$dcurrentdate|dateformat:"m-d-Y"}">
	<h4>{$dcurrentdate|dateformat:"D, M d, Y"}</h4>
	{if $data|@count>0}
	<table class="dayeventlist">
	{section name="event" loop=$data start=$Page->params.sievents|default:0}
		<tr id="event_data_{$data[event].id}">
			<td class="time">{if $data[event].starttime<>''}{$data[event].starttime}{/if}</td>
            <td class="description"><a href="javascript:void(0);" onclick="RivistaAjax.opsCalendarLoadEvent('{$data[event].id}','{$data[event].calendarid}','{$calendarpageid}');" class="expand_calendar_event">{$data[event].title|capitalize}</a></td>
		</tr>
	{/section}
	</table>
	{else}
	<h5>No events</h5>
	{/if}
</div>