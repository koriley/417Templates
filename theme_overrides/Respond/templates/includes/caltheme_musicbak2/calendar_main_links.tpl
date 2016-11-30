{if isset($event) || istrue ($calendar.ispublic)}
<ul class="child-page-menu">
	{if isset($event)}
	<li><a href="{$calendar.calendarurl}">{$calendar_viewevent_labels_calendarhome}</a></li>
	{/if}
	{if istrue($calendar.ispublic)}
	<li><a href="{$calendar.calendarurl}?view=new_event">{$calendar_viewevent_labels_submitevent}</a></li>
	{/if}
</ul>
{/if}