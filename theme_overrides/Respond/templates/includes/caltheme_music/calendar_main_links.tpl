   {if isset($event) || istrue ($calendar.ispublic)}
	{if isset($event)}
		<li><a href="{$calendar.calendarurl}">{$calendar_viewevent_labels_calendarhome}<i class="icon-chevron-right"></i></a></li>
	{/if}
	{if istrue($calendar.ispublic)}
		<li><a href="{$calendar.calendarurl}?view=new_event">{$calendar_viewevent_labels_submitevent}<i class="icon-chevron-right"></i></a></li>
	{/if}
	{if value($calendar_ical_link, 0)}
        {if strpos($calendar_ical_link, "eventid") !== false}
            {assign var="pt_ical_alt" value=$pt_ical_event_alt}
            {assign var="pt_ical_linktext" value=$pt_ical_event_linktext}
        {else}
            {assign var="pt_ical_alt" value=$pt_ical_calendar_alt}
            {assign var="pt_ical_linktext" value=$pt_ical_calendar_linktext}
        {/if}
        <li><a rel="nofollow" target="_blank" title="{$pt_ical_alt}" href="{$calendar_ical_link}">{$pt_ical_linktext}<i class="icon-chevron-right"></i></a></li>
    {/if}
{/if} 
