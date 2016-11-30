  <div id="event_{$event.id}" class="event {if $event.params.featured == 'yes'} featured {/if}">
	<h5>{$event.startdate|dateformat:"M d, Y"}{if $event.enddate!=$event.startdate} - {$event.enddate|dateformat:"M d, Y"}{/if}
	{$event.starttime}{if $event.starttime!=$event.starttime} - {$event.endtime}{/if}</h5>
	<div class="eventcontainer">
		{include file="caltheme_music/calendar_view_event.tpl"}
	</div>
</div>
         